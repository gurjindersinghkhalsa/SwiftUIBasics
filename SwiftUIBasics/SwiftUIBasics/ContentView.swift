//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Gurjinder Singh on 21/04/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack() {
                Text("Shapes")
                Text("Shapes Introduction")
                Text("Shapes with background color. Shapes with background color. Shapes with background color")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(.black)
                    .font(.title2)
                Text("RoundedRectangle is a common Shape")
                    .foregroundColor(.white)
                    .padding()
                    .font(.title2)
                    .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.red))
                Text("Text has Corner Radius")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(.red)
                    .cornerRadius(20)
            }
            .font(.title)
            .foregroundColor(.blue)
            .navigationBarTitle("Shapes")
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
