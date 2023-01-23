//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christopher Kennedy on 1/20/23.
//

import SwiftUI

struct ContentView: View {
    @State var messageString = ""
    var body: some View {
        VStack {
            //            Image(systemName: "swift")
            //                .resizable()
            //                .scaledToFit()
            //                .padding(.horizontal, 30.0)
            //                .padding(.bottom, 100)
            //            //.imageScale(.large)
            //                .foregroundColor(.orange)
            // .background(.blue)
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .italic()
                .padding()
            //.background(.yellow)
            HStack{
                Button("Awesome") {
                    // This is action performed when button pressed
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                Button("Great"){
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
