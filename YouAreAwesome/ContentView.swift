//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christopher Kennedy on 1/20/23.
//
// To Make A Change

import SwiftUI

struct ContentView: View {
    @State var messageString = ""
    @State var imageName = ""
    var body: some View {
            VStack {
    
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    .padding()
                
                Spacer()
    
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.pink)
                    .italic()
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .padding()
                
                Spacer()
                
                Button("Show Message") {
                    let message1 = "You Are Awesome!"
                    let message2 = "You Are Great!"
                    let image0 = "image0"
                    let image1 = "image1"
                    messageString = (messageString == message1 ?  message2 : message1)
                    imageName = (imageName == image0 ? image1 : image0)
                }
                .buttonStyle(.borderedProminent)
             
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
