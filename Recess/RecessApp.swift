//
//  RecessApp.swift
//  Recess
//
//  Created by Lisa Calegari on 5/20/22.
//
import UIKit
import SwiftUI
//import FirebaseCore
//import FirebaseFirestore
//import FirebaseAuth
import Firebase
//import GoogleSignIn

@main
struct RecessApp: App {
    @StateObject var viewModel = AuthenticationViewModel()
    
    init() {
       setupAuthentication()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}

extension RecessApp {
    private func setupAuthentication() {
        FirebaseApp.configure()
    }
}


//google login firebase setup
//https://blog.codemagic.io/google-sign-in-firebase-authentication-using-swift/
