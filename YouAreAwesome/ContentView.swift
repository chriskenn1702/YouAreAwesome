//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christopher Kennedy on 1/20/23.
//
// To Make A Change

import SwiftUI

struct ContentView: View {
    @State var messageString = "Namaste"
    var body: some View {
            VStack {
                Spacer()
                
                Image(systemName: "speaker.wave.3", variableValue: 0.5)
                    .resizable()
                    .scaledToFit()
//                    .foregroundColor(.orange)
                    .symbolRenderingMode(.multicolor)
                    .padding()
                    .background(Color(hue: 0.521, saturation: 0.873, brightness: 0.949, opacity: 0.592))
                    .cornerRadius(30)
//                    .scaledToFill()
//                    .border(.pink)
//                    .frame(width: 200, height: 300)
//                    .clipped()
//                    .border(.blue)
//                    .clipShape(Circle())
                    .shadow(color: .gray, radius: 30, x: 20, y:20)
                    .overlay(RoundedRectangle(cornerRadius: 30)
                        .stroke(.teal, lineWidth: 1))
                    .padding()
                
                
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
//                    .border(.blue)
                
                Spacer()
                
                
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
                .padding()
                .tint(Color("Vermilliun"))
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
