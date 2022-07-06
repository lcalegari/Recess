import SwiftUI

//  Created by Ethan Chan on 7/5/22.
//
//Note padding may need to be more relative
import SwiftUI

//screen dims
extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
//background color
let Color_bg : Color = Color(#colorLiteral(red: 0.8208333253860474, green: 0.8099695444107056, blue: 0.7797916531562805, alpha: 1))
/* TODO : add custom fonts,
    format padding better, a
    dd variables for parts that are customizable
    */


struct OnboardingViews: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    var body: some View {
        ScrollView {
            Page2()
            Page3()
        }.onTapGesture {
            viewModel.state = .page2
        }
    }
}
struct Page2: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    var body: some View {
            VStack {
                // a group of text
                Group {
                    Text("This is recess")
                        .bold()
                        .padding(.vertical,5)
                    Text("Get recommended potential besties based on your shared interests.")
                }
                .font(.title)
                .frame( maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                //add the profile view
                UserProfileView()
                Spacer()
            }.background(Color_bg)
    }
}
struct Page3: View {
    var body: some View {
        VStack {
            UserProfileView()
            Group {
                Text("Like..").bold().font(.title)
                Text("And match with the people you are interested in getting to know!")
            }
            .frame(maxWidth: .infinity , alignment: .leading)
            .padding(.horizontal, 10)
        }.background(Color_bg)
    }
}


struct OnboardingViews_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViews()
    }
}
