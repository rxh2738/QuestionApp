//
//  Question2.swift
//  QuestionApp
//
//  Created by Rudhmila Hoque on 6/9/23.
//

import SwiftUI

struct Question2: View {
    @State private var ex = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("What is your favorite movie?")
                Button("Home Alone") {
                    ex = "I love Home Alone too!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color.blue)
                Button("Spider Man") {
                    ex = "I love Spider Man too!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color.pink)
                Button("Moana") {
                    ex = "I love Moana too!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color.green)
                Button("Superman") {
                    ex = "I love Superman too!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color.yellow)
                
                Text(ex).font(.system(size: 40))
                    
                }
            .toolbar{
                ToolbarItemGroup(placement: .status){
                    NavigationLink(destination: Question3()) {
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

struct Question2_Previews: PreviewProvider {
    static var previews: some View {
        Question2()
    }
}
