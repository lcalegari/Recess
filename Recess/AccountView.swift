//
//  AccountView.swift
//  Recess
//
//  Created by Ethan Irwin on 7/5/22.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack {
            Group {
            
            Text("Open Connections").frame(alignment: .leading)
            Text("Show Me")
            Text("Maximum Distance")
            Text("Age Range")
            Text("Location")
            Text("Facebook")
            Text("Instagram")
            Text("Snapchat")
                Text("Spotify")

            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 10)
              
            Spacer()
        }
            .frame(
               maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .leading
             )
            .padding()
            .background(Color_bg)
    }

}

struct settingLabel: View {
    var body: some View {
        Text("hello")
    }
}
struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
