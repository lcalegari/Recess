//
//  ContentView.swift
//  Recess
//
//  Created by Lisa Calegari on 5/20/22.
//
import UIKit
import SwiftUI
import Firebase
//import FirebaseCore
//import FirebaseFirestore
//import FirebaseAuth
//import GoogleSignIn
//import GoogleSignInSwift


struct ContentView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    
    var body: some View {
        ///Do we link initial view like: InitialView() or just have code here?
        
//.onTapGesture {
        switch viewModel.state {
            case .initialV: InitialView()
            case .signedIn: HomeView() //HomeView()
            case .signedOut: OnboardingViews()
            case .page2: LoginView()
            case .newProf: ProfCreatorView()
        }
    }
}
/*
struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
     ContentView()
 }
}

*/



