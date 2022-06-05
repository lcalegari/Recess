//
//  ProfCreatorView.swift
//  Recess
//
//  Created by Lisa Calegari on 5/29/22.
//

import Foundation
import SwiftUI
import GoogleSignIn
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
import Firebase

struct ProfCreatorView: View {
  // 1
    //attempting to write code to connect to database - maybe should be part of view instead?
    //https://firebase.google.com/docs/database/ios/read-and-write
    
    @State var dbref: DatabaseReference!
    
    
  @EnvironmentObject var viewModel: AuthenticationViewModel
    private let user = GIDSignIn.sharedInstance.currentUser
    
    
  //@State var user = UserProfile
    @State var firstname = ""
    @State var agetext = ""
    @State var uage = 0
    @State var ubio = "Write a bit about yourself"
  // 2
  
  var body: some View {
    NavigationView {
        VStack{
        Form {
            Section(header: Text("Profile Information")) {
                TextField("First Name", text: $firstname)
                TextField("18", text: $agetext).keyboardType(.decimalPad)
                TextEditor(text: $ubio)
            }
            Section {
                Button(action: {
                    print("submitted ..")
                    uage = Int(agetext) ?? 0
                    //let newUser = UserProfile(name: firstname, age: uage,bio: ubio)
                    let userProf: NSArray = [firstname, uage, ubio]
                    //get database
                    dbref = Database.database(url: "https://recess-app-3f0ec-default-rtdb.firebaseio.com/").reference()
                    //submit user data to database
                    let user = Auth.auth().currentUser
                    self.dbref.child("users").child(user!.uid).setValue(["userprofile": userProf])
                    viewModel.submitProf()
                }) {
                    Text("Submit")
                }
            }
        }.navigationTitle("Make a New Profile")
    //.navigationViewStyle(StackNavigationViewStyle())
        }}
  }
}


//how to make form: https://betterprogramming.pub/create-a-form-in-swiftui-2-0-3a7f26303fd2
