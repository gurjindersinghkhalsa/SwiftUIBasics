//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Gurjinder Singh on 21/04/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var isYellow = true
    var body: some View {
        VStack(spacing: 20) {
            ScrollView() {
                Button {
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .padding(10)
                .background(.black)
                .cornerRadius(10)
                .font(.title3)
                
                Divider()
                Button("Default Button Style") {
                    
                }
                .font(.largeTitle)
                .padding(20)
                .background(RoundedRectangle(cornerRadius: 20)
                    .stroke(.red, lineWidth: 4))
                Divider()
                Button("Default Button Style") {
                    
                }
                .padding(20)
                .font(.title3)
                .border(.red, width: 2)
                Divider()
                VStack() {
                    Button(action:{
                        print("pressed")
                    }) {
                        Text("Solid Button")
                            .padding(18)
                            .background(.red)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(10)
                            .font(.largeTitle)
                    }
                    Divider()
                    Button(action:{
                        print("pressed")
                    }) {
                        Text("Shadow")
                            .padding(18)
                            .background(.purple)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(10)
                            .font(.largeTitle)
                            .shadow(color: .black, radius: 5, x: 0, y: 0)
                    }
                    Divider()
                    Button(action: {}){
                        Text("Forgot Pasword?")
                        Text("Back To Login").foregroundColor(.orange)
                    }
                    .padding(15)
                    .background(.black)
                    .cornerRadius(10)
                    Divider()
                    Button(action: {}){
                        VStack(spacing : 15){
                            Text("New User?")
                            Text("Register Here")
                                .foregroundColor(.orange)
                                .font(.body)
                        }
                    }
                }.font(.title)
                Divider()
                VStack() {
                    HStack() {
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("+")
                                .frame(width: 80, height: 80)
                                .font(.largeTitle)
                                .background(.black)
                                .cornerRadius(40)
                        }
                    }
                }
                .padding(.trailing, 20)
            }.edgesIgnoringSafeArea(.all)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
      //  ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
