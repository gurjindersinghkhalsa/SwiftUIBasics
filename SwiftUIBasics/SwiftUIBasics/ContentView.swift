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
        ScrollView() {

        VStack(spacing: 30) {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Alignment Leading")
                    Divider()
                    Image(systemName: "arrow.left")
                }
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.blue))
                
                VStack(alignment: .trailing, spacing: 20) {
                    Text("Alignment Trailing")
                    Divider()
                    Image(systemName: "arrow.right")
                }
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.blue))
                
                VStack () {
                    Text("Centered Align by defalut")
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.accentColor))
                    
                }
                Divider()
                HStack () {
                    Image(systemName: "1.circle")
                    Image(systemName: "2.circle")
                    Image(systemName: "3.circle")
                }
                .padding()
                .font(.title)
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.teal))
                Divider()
                Text("Spacing 100")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                HStack (spacing: 100) {
                    Image(systemName: "1.circle")
                    Image(systemName: "2.circle")
                    Image(systemName: "3.circle")
                }
                .padding()
                .font(.title)
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.teal))
                Divider()
                VStack () {
                    HStack(alignment: .top
                    ) {
                        Rectangle().foregroundColor(.red).frame(width: 20,height: 100)
                        Text("Leading").background(.red)
                        Spacer()
                        Text("Center").background(.red)
                        Spacer()
                        Text("Trailing").background(.red)
                    }.border(.white,width: 3)
                    HStack() {
                        Rectangle().foregroundColor(.red).frame(width: 20,height: 100)
                        Text("Leading").background(.red)
                        Spacer()
                        Text("Center").background(.red)
                        Spacer()
                        Text("Trailing").background(.red)
                    }.border(.white,width: 3)
                    
                    HStack(alignment: .bottom) {
                        Rectangle().foregroundColor(.red).frame(width: 20,height: 100)
                        Text("Leading").background(.red)
                        Spacer()
                        Text("Center").background(.red)
                        Spacer()
                        Text("Trailing").background(.red)
                    }.border(.white,width: 3)
                    
                   
                }
                
            }.background(.black)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
