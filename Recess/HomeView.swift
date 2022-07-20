//
//  HomeView.swift
//  Recess
//
//  Created by Lisa Calegari on 5/29/22.
//
import Foundation
import SwiftUI
import GoogleSignIn

struct HomeView: View {
  // 1
  @EnvironmentObject var viewModel: AuthenticationViewModel
  
  // 2
  private let user = GIDSignIn.sharedInstance.currentUser
  //@EnvironmentObject var userdata = viewModel.getUserData
  var body: some View {
    //let userdt = viewModel.getUserData()
    TabView {
        NavigationView {
            VStack {
                
                HStack {
                  VStack(alignment: .leading) {
                    Text(user?.profile?.name ?? "")
                      .font(.headline)
                    
                    Text(user?.profile?.email ?? "")
                      .font(.subheadline)
                  }
                  Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(12)
                .padding()
                //My User Profile
                //TODO: access the profile.age, and profile.bio. IDK how to rn it says the member doesn't exist
                UserProfileView(name: user?.profile?.name ?? "" + " , " + "agge")
                Spacer()

                // signout button
                Button(action: viewModel.signOut) {
                  Text("Sign out")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(.systemIndigo))
                    .cornerRadius(12)
                    .padding()
                }
                //delete profile button
                Button(action: viewModel.deleteProfile) {
                  Text("Delete Profile")
                      .foregroundColor(Color.white)
                      .padding()
                      .frame(maxWidth: .infinity)
                      .background(Color(.systemRed))
                      .cornerRadius(12)
                      .padding()
                }
          }
          .navigationTitle("Recess")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .tabItem { Label("profile",systemImage: "list.dash")}
        
        AccountView().tabItem {Label("Account", systemImage: "list")}
    }
  }
}

/// A generic view that shows images from the network.
struct NetworkImage: View {
  let url: URL?

  var body: some View {
    if let url = url,
       let data = try? Data(contentsOf: url),
       let uiImage = UIImage(data: data) {
      Image(uiImage: uiImage)
        .resizable()
        .aspectRatio(contentMode: .fit)
    } else {
      Image(systemName: "person.circle.fill")
        .resizable()
        .aspectRatio(contentMode: .fit)
    }
  }
}
