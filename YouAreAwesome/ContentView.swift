//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Christopher Kennedy on 1/20/23.
//


import SwiftUI
import AVFAudio

struct ContentView: View {
    @State var messageString = ""
    @State var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    @State private var lastSoundNumber = -1
    
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
                    lastMessageNumber = nonRepeatingRandom(lastNumber: lastMessageNumber, upperBounds: messageArray.count-1)
                    messageString = messageArray[lastMessageNumber]
                   
                    lastImageNumber = nonRepeatingRandom(lastNumber: lastImageNumber, upperBounds: 9)
                    imageName = "image\(lastImageNumber)"
                    
                    lastSoundNumber = nonRepeatingRandom(lastNumber: lastSoundNumber, upperBounds: 5)
                    playSound(soundName: "sound\(lastSoundNumber)")
                    
                }
                .buttonStyle(.borderedProminent)
             
                
            }
    }
    
    func playSound(soundName: String){
        guard let soundFile = NSDataAsset(name: soundName) else{
            print("😧 Could not read file named \(soundName)")
            return
        }
        do{
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch{
            print("🤬 ERROR: \(error.localizedDescription)")
        }
    }
    
    func nonRepeatingRandom(lastNumber: Int, upperBounds: Int) -> Int{
        var randomNumber = Int.random(in: 0...upperBounds)
        while randomNumber == lastNumber{
            randomNumber = Int.random(in: 0...upperBounds)
        }
        return randomNumber
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
