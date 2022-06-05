//
//  LoginView.swift
//  Recess
//
//  Created by Lisa Calegari on 5/29/22.
//

import Foundation

import SwiftUI

struct LoginView: View {

  // 1
  @EnvironmentObject var viewModel: AuthenticationViewModel

  var body: some View {
    VStack {
      Spacer()

      // 2
      //Image("header_image")
       // .resizable()
      //  .aspectRatio(contentMode: .fit)

      Text("Welcome to Recess!")
        .fontWeight(.black)
        .foregroundColor(Color(.systemIndigo))
        .font(.largeTitle)
        .multilineTextAlignment(.center)

      Text("Meet other people with shared Interests!")
        .fontWeight(.light)
        .multilineTextAlignment(.center)
        .padding()

      Spacer()

      // 3
      GoogleSignInButton()
        .padding()
        .onTapGesture {
          viewModel.signIn()
        }
    }
  }
}
