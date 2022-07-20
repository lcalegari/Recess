//
//  InitialView.swift
//  Recess
//
//  Created by Lisa Calegari on 6/4/22.
//

import SwiftUI

struct InitialView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    var body: some View {
        GeometryReader { gp in
        VStack {
            Image("arrows")
            Image("recess.")
        }
        .background(Color.init(red: 209, green: 207, blue: 199))
        }
           .onTapGesture {
               viewModel.openApp()
           }
    }
}
/*
struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
 */

