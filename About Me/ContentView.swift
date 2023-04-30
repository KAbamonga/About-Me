//
//  ContentView.swift
//  About Me
//
//  Created by Kiara on 4/29/23.
//

import SwiftUI

struct ContentView: View {
    @State private var funFacts = ""
    @State private var photo = "gracie"
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                
                
                Image("gracie").scaledToFill().edgesIgnoringSafeArea(.all).frame(width: geo.size.width, height: geo.size.height, alignment: .center).opacity(1.0
                )
                VStack(alignment: .leading, spacing: 20.0) {
                    Image(photo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                    
                    HStack(spacing: 20.0) {
                        Text("Kiara Abamonga")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text("🤭🕺🫶🏽😂😜😙")
                    }
                    
                    Text("I took this picture at the Gracie Abrams concert hehehe! \(funFacts)")
                        
                    
                    Button("Click me for super cool fun facts") {
                        funFacts =  "\n1. I ate pho with Gracie Abrams! (picture proof above)\n2. I love music and playing guitar!\n3. I am an avid concert goer!"
                        photo = "pho"
                    }
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(Color("Green"))
                }
                
                .padding()
                .background(Rectangle() .foregroundColor(Color("Snow")))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
