//
//  ContentView.swift
//  Shared
//
//  Created by Паша on 5.08.23.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    
    var body: some View {
        HStack {
            VStack {
                Text("Мяу")
                    .font(.largeTitle)
                Text("Ай Ай Ай")
                    .font(.caption)
            }
        }
        Image("1")
            .resizable()
            .scaledToFit()
        VStack {
            Circle()
                .frame(maxHeight: 200)
                .foregroundColor (isOn ? .purple : .mint)
                .shadow(color: isOn ? .indigo : .orange, radius: 20)
            Button("Press me") {
                isOn.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
