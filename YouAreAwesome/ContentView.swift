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
    @State var imageNumber = 0
    
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
                    messageString = (messageString == message1 ?  message2 : message1)
                    imageName = "image\(imageNumber)"
                    imageNumber+=1
                    if imageNumber == 10{
                        imageNumber = 0
                    }
                    
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
