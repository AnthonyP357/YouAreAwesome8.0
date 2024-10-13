//
//  ContentView.swift
//  YouAreAwesome8.0
//
//  Created by Anthony Perez on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "They Call You When Help Is Needed For Computing Solutions"
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
    var body: some View {
        
        VStack {
            Text("You Are Awesome App For SwiftUI!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color("Gold-BC"))
                .padding()
                .background(Color("Maroon-BC"))
                .cornerRadius(15)
            
            Spacer()
            
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
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            
            Spacer()
            
            Button("Show Message") {
                // This is the action performed when the button is pressed
                //                let message1 = "You Are Awesome!"
                //                let message2 = "You Are Great!"
                //                let message3 = "You Are Amazing!"
                //                let message4 = "You're Such A Fantastic Teacher!"
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "You Are Amazing!",
                                "You Are Such A Fantastic Teacher!",
                                "You Make Me Smile!",
                                "You Bring Me Joy!",
                                "You Are So Smart!",
                                "They Call You When They Need An Expert!"]
                messageString = messages[Int.random(in: 0...messages.count-1)]
                
                imageName = "image\(Int.random(in: 0...16))"
                //                imageNumber = imageNumber + 1
                //                if imageNumber > 17 {
                //                    imageNumber = 0
            }
            //                print(imageNumber)
            .buttonStyle(.borderedProminent)
            
            .padding()
            
        }
            
    }
}


#Preview {
    ContentView()
}
