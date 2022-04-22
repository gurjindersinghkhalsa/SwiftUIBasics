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
        
        VStack(spacing: 10) {
            Text("Title")
                .font(.largeTitle)
                .fontWeight(.medium)
                .rotationEffect(.degrees(90))
            Text("SubTitle")
                .font(.title) // this will override the parent's .largetitle
                .foregroundColor(.gray)
            Text("*Even the world's most successful individuals have experienced their fair share of setbacks and hardships.* There's much to learn from their challenges as well as their success. **Luckily**, they've condensed their wisdom into meaningful quotes that you can store for later use.")
                .font(.title)
                .foregroundColor(.white)
                .padding(20) // should before .background
                .background(.blue) // The important thing to notice here is it is not a backgroundColor modifier. That does not exist. It is a background modifier because it adds a layer behind the view
                .frame(maxWidth: .infinity)
                .lineLimit(10)
                .truncationMode(.head)
                .multilineTextAlignment(.leading)
                .lineSpacing(10)
               // .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
        }.font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
