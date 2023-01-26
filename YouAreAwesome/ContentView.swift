//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christopher Kennedy on 1/20/23.
//
// To Make A Change

import SwiftUI

struct ContentView: View {
    @State var messageString = "When the Genius Bar needs help, they call you!"
    var body: some View {
//        GeometryReader {geometry in
            VStack(spacing:0) {
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.red)
                    .italic()
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
    //                .border(.orange, width: 1)
                    .padding()
                
                Spacer()
                
//                Divider()
//                    .background(.blue)
//                    .padding()
//                    .frame(width: 150.0)
//
//                Rectangle()
//                    .fill(.indigo)
//                    .frame(width: geometry.size.width * 2/3, height: 1)
                
                HStack{
                    Button("Awesome") {
                        messageString = "You Are Awesome!"
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Spacer()
                    
                    
                    Button("Great"){
                        messageString = "You Are Great!"
                    }
                    .buttonStyle(.borderedProminent)
                }
    //            .border(.purple, width: 5)
                .padding()
                .tint(Color("Vermilliun"))
            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
