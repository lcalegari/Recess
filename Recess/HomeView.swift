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
    NavigationView {
      VStack {
        HStack {
          // 3
          //NetworkImage(url: user?.profile?.imageURL(withDimension: 200))
           // .aspectRatio(contentMode: .fit)
          //  .frame(width: 100, height: 100, alignment: .center)
           // .cornerRadius(8)
          
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
        
          /*VStack {
           view.ref.child(“user_id”).observeSingleEvent(of: .value, with: { (snapshot) in
           if let id = snapshot.value as? Int {
           print(“The value from the database: \(id)”)
           }
           })

              //let userdata = viewModel.getUserData()
              //print(userdata)
              HStack {
              Text("Name: ")
                  Text(userdt[0] as! String )
              }
              HStack{
              Text("Age: ")
                  Text(userdt[1] as! String )
              }
              HStack{
              Text("Bio: ")
                  Text(userdt[2] as! String ) // ?? "")
              }}*/
        Spacer()
        
        // 4
        Button(action: viewModel.signOut) {
          Text("Sign out")
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(.systemIndigo))
            .cornerRadius(12)
            .padding()
        }
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
