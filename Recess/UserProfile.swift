//
//  UserProfile.swift
//  Recess
//
//  Created by Lisa Calegari on 5/27/22.
//
import UIKit
import Foundation

class UserProfile: ObservableObject {
    @Published var name: String?
    @Published var age: Int?
    var DBMSid: Int?
    ///TODO: add interests, pictures, suggestions etc
    ///@Published var interests: [Interest]?
    //var gender -> make into a class? struct?
    //var targetgenders -> array of genders
    @Published var bio: String?
    ///@Published var pictures: [UIImage]?
    //TO-DO: gender, target gender, likes, matches, suggested profiles, etc
    ///@Published var suggestions: [UserProfile]?
    
    //TO-DO: Add Interests to INIT
    //TO-DO: Add pictures to INIT
    //To-DO: Add suggestions to init
    init(name: String, age: Int, bio: String){
        self.name = name
        self.age = age
        self.bio = bio
    }
    func updateBio(newbio: String){
        self.bio = newbio
    }
}

//TO-DO: create profile and store in database or get profile from database

/*NOTES:
 The ObservableObject conformance allows instances of this class to be used inside views, so that when important changes happen the view will reload.
 The @Published property wrapper tells SwiftUI that changes to score should trigger view reloads.
 
 Remember, please do not use @ObservedObject to create instances of your object. If that’s what you want to do, use @StateObject instead.


 */
