//
//  AuthenticationViewModel.swift
//  Recess
//
//  Created by Lisa Calegari on 5/29/22.
//
//code inspired by tutorial: https://blog.codemagic.io/google-sign-in-firebase-authentication-using-swift/

import Foundation
import Firebase
import GoogleSignIn

class AuthenticationViewModel: ObservableObject {
    //1
    
    enum SignInState {
        case signedIn
        case newProf
        case page2
        case signedOut
        case initialV
    }
    
    //2
    @Published var state: SignInState = .initialV //.signedOut
    //Database stuff - figure out if can generalize/only have code in one file?
   // @Published var dbref: DatabaseReference!
    private let user = GIDSignIn.sharedInstance.currentUser
    @Published var dbuser = Auth.auth().currentUser
    @Published var dbref = Database.database(url: "https://recess-app-3f0ec-default-rtdb.firebaseio.com/").reference()
    func submitProf(){
        state = .signedIn
    }
    
    func openApp(){
        state = .signedOut
    }
    
    func signIn() {
        //1//TO-DO: create profile and store in database or get profile from database
        if GIDSignIn.sharedInstance.hasPreviousSignIn() {
            GIDSignIn.sharedInstance.restorePreviousSignIn { [unowned self] user, error in authenticateUser(for: user, with: error)
                state = .signedIn
                //let userdata = self.getUserData()
                //print(userdata)
            }
        } else {
            //2
            guard let clientID = FirebaseApp.app()?.options.clientID else {return }
            
            /// 3
            let configuration = GIDConfiguration(clientID: clientID)
            
            // 4
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return }
            guard let rootViewController = windowScene.windows.first?.rootViewController else { return }
            
            // 5
            GIDSignIn.sharedInstance.signIn(with: configuration, presenting: rootViewController) { [unowned self] user, error in
              authenticateUser(for: user, with: error)
            }
        }
    
    }
    func signOut() {
      // 1
      GIDSignIn.sharedInstance.signOut()
      
      do {
        // 2
        try Auth.auth().signOut()
        
        state = .signedOut
      } catch {
        print(error.localizedDescription)
      }
    }
    
    //TO-DO: Make this function work - want to get user data for current user as NSArray
   //func getUserData() -> NSArray {
        /*var ud : NSArray = ["", "", ""];
        dbuser = Auth.auth().currentUser
        dbref.child("users").child(dbuser!.uid).getData(completion:  { error, snapshot in
          guard error == nil else {
            print(error!.localizedDescription)
            return;
          }
            let userData = snapshot?.value as? NSArray ?? ["Unknown"];
            ud = userData
            //return userData;
        });
        return ud*/
        
        /*dbref.child("users").child(dbuser!.uid).getData(completion: { (querySnapshot, error) in
                    guard let documents = querySnapshot?.documents else {
                        print("No documents")
                        return
                    }
                    
                    self.users = documents.map { (queryDocumentSnapshot) -> User in
                        let data = queryDocumentSnapshot.data()
                        let name = data["name"] as? String ?? ""
                        let surname = data["surname"] as? String ?? ""
                        return User(name: name, surname: surname)
                    }
                }
        )*/
       //return
   //}
    
    func deleteProfile() {
        self.dbref.child("users").child(dbuser!.uid).removeValue()
        self.signOut()
    }
    
    //authenticate User function
    private func authenticateUser(for user: GIDGoogleUser?, with error: Error?) {
      // 1
      if let error = error {
        print(error.localizedDescription)
        return
      }
        //3 setup database stuff
        //submit user data to database
      // 2
      guard let authentication = user?.authentication, let idToken = authentication.idToken else { return }
      let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: authentication.accessToken)
      // 3
      Auth.auth().signIn(with: credential) { [unowned self] (_, error) in
        if let error = error {
          print(error.localizedDescription)
        } else {

             //https://stackoverflow.com/questions/37405149/how-do-i-check-if-a-firebase-database-value-exists
            dbuser = Auth.auth().currentUser
            //print(dbuser?.uid)
            self.dbref.child("users").child(dbuser!.uid).observeSingleEvent(of: .value, with: { (snapshot) in
                if snapshot.hasChild("userprofile"){
                    
                    self.state = .signedIn
                    
                }else {
                    
                    self.state = .newProf
                }})
        }
      }
    }
}


