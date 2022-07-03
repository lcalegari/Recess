//
//  Page2.swift
//  Recess
//
//  Created by Ethan Chan on 7/3/22.
//

import SwiftUI

struct Page2: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    var body: some View {
        VStack {
            Group {
          //Get recommended potential ...
                Text("Get recommended potential besties based on your shared interests.").font(.custom("Lexend Deca Regular", size: 24))

        //image 4
                ZStack {
                    Image(uiImage: #imageLiteral(resourceName: "image4"))
                    .resizable()
                    .frame(width: 218.5, height: 150)
                    .clipped()

                    Rectangle()
                    .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2)
                }
                .frame(width: 218.5, height: 150)

        //This is recess.
                Text("This is recess.").font(.custom("Lexend Deca SemiBold", size: 24))

        //Yoga
                HStack {
                    Text("Yoga").font(.custom("Lexend Regular", size: 12))
                    Text("Horror Movies").font(.custom("Lexend Regular", size: 12))
                    Text("Aerospace").font(.custom("Lexend Regular", size: 12))
                }
                

        //Rectangle 43
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                    .fill(Color(#colorLiteral(red: 0.8039215803146362, green: 0.3176470696926117, blue: 0.21568627655506134, alpha: 1)))

                    RoundedRectangle(cornerRadius: 40)
                    .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2)
                }
                .frame(width: 89.7, height: 20)
        //Rectangle 44
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                    .fill(Color(#colorLiteral(red: 0.8039215803146362, green: 0.3176470696926117, blue: 0.21568627655506134, alpha: 1)))

                    RoundedRectangle(cornerRadius: 40)
                    .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2)
                }
                .frame(width: 121.2, height: 20)

        //Aerospace
                

        //Rectangle 42
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                    .fill(Color(#colorLiteral(red: 0.8039215803146362, green: 0.3176470696926117, blue: 0.21568627655506134, alpha: 1)))

                    RoundedRectangle(cornerRadius: 40)
                    .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2)
                }
                .frame(width: 100, height: 20)

        //Interests
                Text("Interests").font(.custom("Lexend SemiBold", size: 16))
            }

            Group {
          //I’m really passionate abou...
                Text("I’m really passionate about aerospace and flight! I’m currently in the process of getting my pilot license (and no, I can’t give you a free flight)").font(.custom("Lexend Regular", size: 14))

        //University of Chicago
                Text("University of Chicago").font(.custom("Lexend Light", size: 14))

        //Christine, 21
                Text("Christine, 21").font(.custom("Lexend SemiBold", size: 20))

        //Rectangle 39
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                    .fill(Color(#colorLiteral(red: 0.8208333253860474, green: 0.8099695444107056, blue: 0.7797916531562805, alpha: 1)))

                    RoundedRectangle(cornerRadius: 16)
                    .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 2)
            }
                .frame(width: 256, height: 539.5)
            }
        }
        .onTapGesture {
            viewModel.state = .page2
        }
    }
}





