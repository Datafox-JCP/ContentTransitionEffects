//
//  ContentView.swift
//  Practical SwiftUI
//
//  Created by Juan Hernandez Pazos on 17/09/23.
//
// Yotube: https://www.youtube.com/@DatafoxSoftware
// Facebook: https://www.facebook.com/DatafoxSoftware
// Twitter: https://twitter.com/datafoxsoftware
// Instagram: https://www.instagram.com/datafoxsoftware/
// Datafox: https:///datafox.mx
// Buy me a coffe: https://ko-fi.com/datafoxsoftware
// Life Moments: https://apple.co/3HsAwqF
// iOS Technical Interview Guide: https://datafoxsoftware.gumroad.com/l/iostechguide

import SwiftUI

struct ContentView: View {
    
    @State private var sfImage = "leaf"
    @State private var sfCount = 0
    @State private var number = 0
    
    var body: some View {
        VStack {
            Image(systemName: sfImage)
                .resizable()
                .frame(width: 75, height: 75)
                .contentTransition(.symbolEffect(.automatic))
            
            Button(action: {
                let images = ["suit.heart", "house", "gearshape", "person.circle", "macbook", "apple.logo"]
                
                withAnimation() {
                    sfCount += 1
                    sfImage = images[sfCount % images.count]
                }
                
            }, label: {
                Text("Cambiar Imagen")
            })
            .padding()
            
            Text("$\(number)")
                .font(.largeTitle.bold())
                .contentTransition(.numericText(value: Double(number)))
            
            Button {
                withAnimation() {
                    number = .random(in: 100...1000_000)
                }
            } label: {
                Text("Actualizar")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
