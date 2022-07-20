//
//  OnboarrdingView.swift
//  Recess
//
//  Created by Ethan Chan on 7/2/22.
//

import SwiftUI
import UIKit
struct OnboardingView : UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> OnboardingViewController {
        return OnboardingViewController()
    }
    func updateUIViewController(_ uiViewController: OnboardingViewController, context: Context) {
        //return OnboardingViewController()
    }
}
