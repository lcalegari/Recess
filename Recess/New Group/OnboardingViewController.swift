//
//  OnboardingViewController.swift
//  Recess
//
//  Created by Ethan Chan on 7/2/22.
//

import UIKit

class OnboardingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Rectangle 39
        let a = UILabel()
        a.frame = CGRect(x: 0, y: 0, width: 256, height: 539.47)
        a.backgroundColor = .white
        a.layer.backgroundColor = UIColor(red: 0.821, green: 0.81, blue: 0.78, alpha: 1).cgColor
        a.layer.cornerRadius = 16
        a.layer.borderWidth = 2
        a.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        var parent = self.view!
        parent.addSubview(a)
        a.translatesAutoresizingMaskIntoConstraints = false
        a.widthAnchor.constraint(equalToConstant: 256).isActive = true
        a.heightAnchor.constraint(equalToConstant: 539.47).isActive = true
        a.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 67).isActive = true
        a.centerYAnchor.constraint(equalTo: parent.centerYAnchor, constant: 79.51).isActive = true
        
        // Vector 13
        var b = UILabel()
        b.frame = CGRect(x: 0, y: 0, width: 32.42, height: 0)
        b.backgroundColor = .white
        var stroke = UIView()
        stroke.bounds = view.bounds.insetBy(dx: -1.25, dy: -1.25)
        stroke.center = view.center
        view.addSubview(stroke)
        view.bounds = view.bounds.insetBy(dx: -1.25, dy: -1.25)
        stroke.layer.borderWidth = 2.5
        stroke.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        parent = self.view!
        parent.addSubview(b)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.widthAnchor.constraint(equalToConstant: 32.42).isActive = true
        b.heightAnchor.constraint(equalToConstant: 0).isActive = true
        b.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 291.5).isActive = true
        b.topAnchor.constraint(equalTo: parent.topAnchor, constant: 748.37).isActive = true

        // Vector 14
        let c = UILabel()
        c.frame = CGRect(x: 0, y: 0, width: 82.37, height: 0)
        c.backgroundColor = .white
        stroke = UIView()
        stroke.bounds = view.bounds.insetBy(dx: -1.25, dy: -1.25)
        stroke.center = view.center
        c.addSubview(stroke)
        c.bounds = view.bounds.insetBy(dx: -1.25, dy: -1.25)
        stroke.layer.borderWidth = 2.5
        stroke.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        parent = self.view!
        parent.addSubview(c)
        c.translatesAutoresizingMaskIntoConstraints = false
        c.widthAnchor.constraint(equalToConstant: 82.37).isActive = true
        c.heightAnchor.constraint(equalToConstant: 0).isActive = true
        c.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 360.54).isActive = true
        c.topAnchor.constraint(equalTo: parent.topAnchor, constant: 821.75).isActive = true
        
        // Christine, 2
        b = UILabel()
        b.frame = CGRect(x: 0, y: 0, width: 123, height: 25)
        b.backgroundColor = .white
        b.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        b.font = UIFont(name: "Lexend-SemiBold", size: 20)
        // Line height: 25 pt
        // (identical to box height)
        b.text = "Christine, 21"
        parent = self.view!
        parent.addSubview(b)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.widthAnchor.constraint(equalToConstant: 123).isActive = true
        b.heightAnchor.constraint(equalToConstant: 25).isActive = true
        b.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 87).isActive = true
        b.topAnchor.constraint(equalTo: parent.topAnchor, constant: 448.25).isActive = true


        // University of Chicago
        b = UILabel()
        b.frame = CGRect(x: 0, y: 0, width: 167, height: 13)
        b.backgroundColor = .white
        b.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        b.font = UIFont(name: "Lexend-Light", size: 14)
        // Line height: 18 pt
        b.text = "University of Chicago"
        parent = self.view!
        parent.addSubview(b)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.widthAnchor.constraint(equalToConstant: 167).isActive = true
        b.heightAnchor.constraint(equalToConstant: 13).isActive = true
        b.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 87).isActive = true
        b.topAnchor.constraint(equalTo: parent.topAnchor, constant: 473.25).isActive = true


        // I’m really passionate about aerospace and flight! I’m currently in the process of getting my pilot license (and no, I can’t give you a free flight)
        b = UILabel()
        b.frame = CGRect(x: 0, y: 0, width: 218.5, height: 90)
        b.backgroundColor = .white
        b.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        b.font = UIFont(name: "Lexend-Regular", size: 14)
        b.numberOfLines = 0
        b.lineBreakMode = .byWordWrapping
        // Line height: 18 pt
        b.text = "I’m really passionate about aerospace and flight! I’m currently in the process of getting my pilot license (and no, I can’t give you a free flight)"
        parent = self.view
        parent.addSubview(b)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.widthAnchor.constraint(equalToConstant: 218.5).isActive = true
        b.heightAnchor.constraint(equalToConstant: 90).isActive = true
        b.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 87).isActive = true
        b.topAnchor.constraint(equalTo: parent.topAnchor, constant: 508.95).isActive = true


        // Interests
        b = UILabel()
        b.frame = CGRect(x: 0, y: 0, width: 73, height: 20)
        b.backgroundColor = .white
        b.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        b.font = UIFont(name: "Lexend-SemiBold", size: 16)
        // Line height: 20 pt
        // (identical to box height)
        b.text = "Interests"
        parent = self.view!
        parent.addSubview(b)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.widthAnchor.constraint(equalToConstant: 73).isActive = true
        b.heightAnchor.constraint(equalToConstant: 20).isActive = true
        b.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 87).isActive = true
        b.topAnchor.constraint(equalTo: parent.topAnchor, constant: 621.66).isActive = true

        // Group 4
        b = UILabel()
        b.frame = CGRect(x: 0, y: 0, width: 100, height: 20)
        b.backgroundColor = .white
        b.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        parent = self.view!
        parent.addSubview(b)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.widthAnchor.constraint(equalToConstant: 100).isActive = true
        b.heightAnchor.constraint(equalToConstant: 20).isActive = true
        b.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 87).isActive = true
        b.topAnchor.constraint(equalTo: parent.topAnchor, constant: 649.51).isActive = true


        // Group 6
        b = UILabel()
        b.frame = CGRect(x: 0, y: 0, width: 121.2, height: 20)
        b.backgroundColor = .white
        b.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        parent = self.view!
        parent.addSubview(b)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.widthAnchor.constraint(equalToConstant: 121.2).isActive = true
        b.heightAnchor.constraint(equalToConstant: 20).isActive = true
        b.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 87).isActive = true
        b.topAnchor.constraint(equalTo: parent.topAnchor, constant: 677.37).isActive = true


        // Group 5
        b = UILabel()
        b.frame = CGRect(x: 0, y: 0, width: 89.72, height: 20)
        b.backgroundColor = .white
        view.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        parent = self.view!
        parent.addSubview(b)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.widthAnchor.constraint(equalToConstant: 89.72).isActive = true
        b.heightAnchor.constraint(equalToConstant: 20).isActive = true
        b.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 189.09).isActive = true
        b.topAnchor.constraint(equalTo: parent.topAnchor, constant: 649.51).isActive = true


        // Vector
        b = UILabel()
        b.frame = CGRect(x: 0, y: 0, width: 23, height: 21)
        b.backgroundColor = .white
        stroke = UIView()
        stroke.bounds = view.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.center = view.center
        b.addSubview(stroke)
        view.bounds = view.bounds.insetBy(dx: -0.5, dy: -0.5)
        stroke.layer.borderWidth = 1
        stroke.layer.borderColor = UIColor(red: 0.804, green: 0.318, blue: 0.216, alpha: 1).cgColor
        parent = self.view!
        parent.addSubview(b)
        b.translatesAutoresizingMaskIntoConstraints = false


        // This is recess.
        var r = UILabel()
        r.frame = CGRect(x: 0, y: 0, width: 168.74, height: 26)
        r.backgroundColor = .white
        r.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        r.font = UIFont(name: "LexendDeca-SemiBold", size: 24)
        // Line height: 30 pt
        r.text = "This is recess."
        parent = self.view!
        parent.addSubview(r)
        r.translatesAutoresizingMaskIntoConstraints = false
        r.widthAnchor.constraint(equalToConstant: 168.74).isActive = true
        r.heightAnchor.constraint(equalToConstant: 26).isActive = true
        r.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 24).isActive = true
        r.topAnchor.constraint(equalTo: parent.topAnchor, constant: 66.59).isActive = true

        
        // image 4
        b = UILabel()
        b.frame = CGRect(x: 0, y: 0, width: 218.5, height: 150)
        b.backgroundColor = .white
        let image0 = UIImage(named: "image.png")?.cgImage
        let layer0 = CALayer()
        layer0.contents = image0
        layer0.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: 1, b: 0, c: 0, d: 2.19, tx: 0, ty: -0.27))
        layer0.bounds = b.bounds
        layer0.position = b.center
        b.layer.addSublayer(layer0)
        b.layer.borderWidth = 2
        b.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        parent = self.view!
        parent.addSubview(b)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.widthAnchor.constraint(equalToConstant: 218.5).isActive = true
        b.heightAnchor.constraint(equalToConstant: 150).isActive = true
        b.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 87.65).isActive = true
        b.topAnchor.constraint(equalTo: parent.topAnchor, constant: 275.54).isActive = true


        // Get recommended potential besties based on your shared interests.
        b = UILabel()
        b.frame = CGRect(x: 0, y: 0, width: 303.77, height: 83.4)
        b.backgroundColor = .white
        b.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        b.font = UIFont(name: "LexendDeca-Regular", size: 24)
        b.numberOfLines = 0
        b.lineBreakMode = .byWordWrapping


        // Line height: 30 pt
        b.text = "Get recommended potential besties based on your shared interests."
        parent = self.view!
        parent.addSubview(b)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.widthAnchor.constraint(equalToConstant: 303.77).isActive = true
        b.heightAnchor.constraint(equalToConstant: 83.4).isActive = true
        b.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 24).isActive = true
        b.topAnchor.constraint(equalTo: parent.topAnchor, constant: 111.13).isActive = true
    }
}
