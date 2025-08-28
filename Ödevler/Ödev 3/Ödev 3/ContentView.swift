//
//  ContentView.swift
//  Ödev 3
//
//  Created by Yağızalp Coşar on 28.08.2025.
//

import SwiftUI

struct ContentView: View {

    @State private var counter = 0
    
    var body: some View {
        VStack(spacing: 30) {

            Text("Sayaç Uygulaması")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            

            Text("\(counter)")
                .font(.system(size: 80, weight: .bold))
                .foregroundColor(.primary)
                .padding()
                .background(
                    Circle()
                        .fill(Color.blue.opacity(0.1))
                        .frame(width: 150, height: 150)
                )

            HStack(spacing: 40) {

                Button(action: {
                    counter -= 1
                }) {
                    Image(systemName: "minus.circle.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.red)
                }
                .scaleEffect(counter == 0 ? 0.8 : 1.0)
                .animation(.easeInOut(duration: 0.1), value: counter)
                

                Button(action: {
                    counter += 1
                }) {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.green)
                }
                .scaleEffect(counter == 0 ? 1.0 : 1.1)
                .animation(.easeInOut(duration: 0.1), value: counter)
            }
            
      
            Button(action: {
                counter = 0
            }) {
                Text("Sıfırla")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
            }
            .opacity(counter == 0 ? 0.5 : 1.0)
            .disabled(counter == 0)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
