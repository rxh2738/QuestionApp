//
//  Question3.swift
//  QuestionApp
//
//  Created by Rudhmila Hoque on 6/9/23.
//

import SwiftUI

struct Question3: View {
    @State private var e = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("What is your favorite food?")
                Button("Pizza") {
                    e = "I love Pizza too!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color.blue)
                Button("Pasta") {
                    e = "I love Pasta too!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color.pink)
                Button("Ramen") {
                    e = "I love Ramen too!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color.green)
                Button("Sushi") {
                    e = "I love Sushi too!"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color.yellow)
                
                Text(e).font(.system(size: 40))
                    
                }
            .toolbar{
                ToolbarItemGroup(placement: .status){
                    NavigationLink(destination: ContentView()) {
                        Text("Back to first")
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

struct Question3_Previews: PreviewProvider {
    static var previews: some View {
        Question3()
    }
}
