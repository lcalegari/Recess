//
//  UserProfileView.swift
//  Recess
//
//  Created by Ethan Irwin on 7/5/22.
//

import SwiftUI
let cust_pad: CGFloat = 20
struct UserProfileView: View {
    //the card view of profile
    var body: some View {
        VStack {
            //the picture
            Image("image4")
                .padding(.top, cust_pad)
                .padding(.horizontal, cust_pad)
            //all text fields
            VStack {
                Group {
                    Text("Christine 21").bold().padding(.vertical).font(.title2)
                    Text("University of Chicago").padding(.bottom).font(.title3)
                    Text("I’m really passionate about aerospace and flight! I’m currently in the process of getting my pilot license (and no, I can’t give you a free flight)")
                        .padding(.bottom, 10)
                }.frame(maxWidth: .infinity , alignment: .leading)   //formatting for text
            } .padding(.horizontal, cust_pad)
            TagCloudView(tags: ["Aerospace", "yourmmomd", "eyoooo"])
            Spacer()
        }
        .frame(alignment: .leading)
        .padding()
        .background(customRect.padding())
    }
}
var customRect: some View {
    ZStack {
        RoundedRectangle(cornerRadius: 16)
            .foregroundColor(Color.black.opacity(0))
        //    .fill(Color(#colorLiteral(red: 0.8208333253860474, green: 0.8099695444107056, blue: 0.7797916531562805, alpha: 1)))
        RoundedRectangle(cornerRadius: 16)
            .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2)
    }
}

//copied and adjusted from stackoverflow: https://stackoverflow.com/questions/57577462/get-width-of-a-view-using-in-swiftui
struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}


struct TagCloudView: View {
    var tags: [String]

    @State private var totalHeight
    //      = CGFloat.zero       // << variant for ScrollView/List
        = CGFloat.infinity   // << variant for VStack

    var body: some View {
        VStack {
            GeometryReader { geometry in
                self.generateContent(in: geometry)
            }
        }
        //.frame(height: totalHeight)// << variant for ScrollView/List
        .frame(maxHeight: totalHeight) // << variant for VStack
    }

    private func generateContent(in g: GeometryProxy) -> some View {
        var width = CGFloat.zero
        var height = CGFloat.zero

        return ZStack(alignment: .topLeading) {
            ForEach(self.tags, id: \.self) { tag in
                self.item(for: tag)
                    .padding([.horizontal, .vertical], 4)
                    .alignmentGuide(.leading, computeValue: { d in
                        if (abs(width - d.width) > g.size.width)
                        {
                            width = 0
                            height -= d.height
                        }
                        let result = width
                        if tag == self.tags.last! {
                            width = 0 //last item
                        } else {
                            width -= d.width
                        }
                        return result
                    })
                    .alignmentGuide(.top, computeValue: {d in
                        let result = height
                        if tag == self.tags.last! {
                            height = 0 // last item
                        }
                        return result
                    })
            }
        }.background(viewHeightReader($totalHeight))
    }

    private func item(for text: String) -> some View {
        //interestsLabel
        Text(text)
            .padding(.all, 5)
            .font(.body)
            .background(Color(#colorLiteral(red: 0.8039215803146362, green: 0.3176470696926117, blue: 0.21568627655506134, alpha: 1)))
            .foregroundColor(Color.white)
            .cornerRadius(40)
    }

    private func viewHeightReader(_ binding: Binding<CGFloat>) -> some View {
        return GeometryReader { geometry -> Color in
            let rect = geometry.frame(in: .local)
            DispatchQueue.main.async {
                binding.wrappedValue = rect.size.height
            }
            return .clear
        }
    }
}

struct TestTagCloudView : View {
    var body: some View {
        VStack {
            Text("Header").font(.largeTitle)
            TagCloudView(tags: ["Ninetendo", "XBox", "PlayStation", "PlayStation 2", "PlayStation 3", "PlayStation 4"])
            Text("Some other text")
            Divider()
            Text("Some other cloud")
            TagCloudView(tags: ["Apple", "Google", "Amazon", "Microsoft", "Oracle", "Facebook"])
        }
    }
}
