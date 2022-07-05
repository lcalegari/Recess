//
//  Page2.swift
//  Recess
//
//  Created by Ethan Chan on 7/3/22.
//

//Note padding may need to be more relative
import SwiftUI

//screen dims
extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
struct Page2: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    var body: some View {
            VStack {
                Group {
                    Text("This is recess")
                        .bold()
                        .padding(.vertical,5)
                    Text("Get recommended potential besties based on your shared interests.")
                }
                .font(.title2)
                .frame( maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                
                profileView
                Spacer()
            }.background(Color(#colorLiteral(red: 0.8208333253860474, green: 0.8099695444107056, blue: 0.7797916531562805, alpha: 1)))
    }
}


struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        Page2()
            .previewInterfaceOrientation(.portraitUpsideDown)
        Page2()
    }
}


var profileView: some View {
    VStack {
        Image("image4").padding(10)
        //all text fields
        VStack {
            Group {
                Text("Christine 21")
                Text("University of Chicago")
                Text("I’m really passionate about aerospace and flight! I’m currently in the process of getting my pilot license (and no, I can’t give you a free flight)")
            }.frame(maxWidth: .infinity , alignment: .leading)
        } .padding(3)
    }
    .frame(alignment: .leading)
    .padding()
    .background(
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(#colorLiteral(red: 0.8208333253860474, green: 0.8099695444107056, blue: 0.7797916531562805, alpha: 1)))
            RoundedRectangle(cornerRadius: 16)
                .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2)
        }.padding()

    )
}
