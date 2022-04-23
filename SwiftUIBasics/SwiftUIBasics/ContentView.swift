//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Gurjinder Singh on 21/04/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var title: String = ""
    var body: some View {
        VStack() {
            ScrollView {
                Text(title)
                    .font(.title)
                    .fontWeight(.medium)
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 4)) // if you want to round the corners of your border – you need to use the overlay() modifier instead. Use stroke() or strokeBorder() with shapes, and border() with other view types.
                    .foregroundColor(.red)
                    .lineSpacing(5)
                Spacer(minLength: 30)
                Image("nature")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 300)
                    .cornerRadius(150) // make circular image
                    .shadow(color: .black, radius: 10, x: 0, y: 0)
                    .overlay(RoundedRectangle(cornerRadius: 150).stroke(Color.blue, lineWidth: 5))
//                    .border(.green,width: 5)
                Spacer(minLength: 30)
                Image("waterfall")
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(20)
                Spacer(minLength: 30)
                Image("waterfall")
                    .cornerRadius(50)
                    .opacity(0.8)
                    .background(.red.opacity(0.6))
                    .background(.yellow.opacity(0.6))
                    .background(.blue.opacity(0.6))
                    .overlay(Text("Nature")
                        .font(.largeTitle)
                        .foregroundColor(.white))
                Spacer(minLength: 30)
                VStack() {
                    ImageView(imageName: "iPhone13", width: .infinity, height: .infinity)
                    ImageView(imageName: "bg", width: .infinity, height: .infinity)
                    ImageView(imageName: "nature", width: .infinity, height: .infinity)
                    ImageView(imageName: "waterfall", width: 300, height: 300)
                    ImageView(imageName: "nature", width: 300, height: 300).border(.red,width: 5)
                }
            }
            .clipped()
        }.background(Color.white.ignoresSafeArea())
    }
}

// Image View Struct
struct ImageView: View {
    let imageName: String
    let width: CGFloat
    let height: CGFloat
    var body: some View {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: width, height: height)
                .border(.blue, width: 5)
            Spacer(minLength: 30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(title: "With SwiftUI views, you can add layers on top (.overlay) and behind background the view.")
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
