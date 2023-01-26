//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christopher Kennedy on 1/20/23.
//
// To Make A Change

import SwiftUI

struct ContentView: View {
    @State var messageString = "I Have a Visceral Hatred For Gradient"
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    Gradient(colors: [.yellow,.green, .red]) 
                )
                .ignoresSafeArea()
//            Color.yellow
//                .opacity(0.5)
//                .ignoresSafeArea()
            
            VStack(spacing:0) {
                Text("You Have Skills!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color("BC-Gold"))
                    .padding()
                    .background(Color("Maroon"))
                    .cornerRadius(15)
                
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
                    .border(.orange, width: 1)
                    .padding()
                
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
                .border(.purple, width: 5)
                .padding()
                .tint(Color("Vermilliun"))
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
