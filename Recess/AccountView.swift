//
//  AccountView.swift
//  Recess
//
//  Created by Ethan Irwin on 7/5/22.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        //NavigationView {
            List {
                Section(header: Text("Recess")) {
                    Text("Open Connections")
                    Text("Show Me")
                    Text("Maximum Distance")
                    Text("")
                }.listRowBackground(Color_bg)
            }
            .navigationTitle("Account")
            .background(Color_bg)
        //}
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
