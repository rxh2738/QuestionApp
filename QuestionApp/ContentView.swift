//
//  ContentView.swift
//  QuestionApp
//
//  Created by Rudhmila Hoque on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var ext = ""
    var body: some View {
        
        ZStack {
            Image("cloud")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
            NavigationStack {
                VStack {
                    Text("What is your favorite color?")
                    Button("Blue") {
                        ext = "I love blue too!"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.blue)
                    Button("Pink") {
                        ext = "I love pink too!"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.pink)
                    Button("Green") {
                        ext = "I love green too!"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.green)
                    Button("Yellow") {
                        ext = "I love yellow too!"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color.yellow)
                    
                    Text(ext).font(.system(size: 50))
                        
                    }
                .toolbar{
                    ToolbarItemGroup(placement: .status){
                        NavigationLink(destination: Question2()) {
                            Text("Next Question")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                        }
                    }
                }
                
                
            }
        }
        
        
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
