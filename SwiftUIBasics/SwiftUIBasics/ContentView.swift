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
        Text("Hello World")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
