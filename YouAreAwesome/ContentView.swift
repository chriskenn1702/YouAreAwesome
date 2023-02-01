//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christopher Kennedy on 1/20/23.
//


import SwiftUI

struct ContentView: View {
    @State var messageString = ""
    @State var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    
    var body: some View {
            VStack {
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
    
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                    .shadow(radius: 30)
                    .padding()
                
                Spacer()
                
                Button("Show Message") {
                    let messageArray = ["You Are Awesome!",
                                        "You Are Great!",
                                        "You Rule!",
                                        "Message 4",
                                        "You Want Another Message, Really?"]
                    var messageNumber = Int.random(in: 0...messageArray.count-1)
                    while messageNumber == lastMessageNumber{
                        messageNumber = Int.random(in: 0...messageArray.count-1)
                    }
                    messageString = messageArray[messageNumber]
                    lastMessageNumber = messageNumber
                    var imageNumber = Int.random(in: 0...9)
                    while imageNumber == lastImageNumber{
                        imageNumber = Int.random(in: 0...9)
                    }
                    imageName = "image\(imageNumber)"
                    lastImageNumber = imageNumber
        
                    
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
