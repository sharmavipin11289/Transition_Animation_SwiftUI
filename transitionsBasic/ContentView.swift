//
//  ContentView.swift
//  transitionsBasic
//
//  Created by Vipin on 15/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShow = false
    
    var body: some View {
        ZStack {
            Text("View Transition")
                .padding()
                .background(Capsule().stroke())
            
            if isShow {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.red)
                    .padding(30)
                    .transition(.move(edge: .bottom))
                    .zIndex(1.0)
            }
            
        }
        .onTapGesture {
            withAnimation(.spring()){
                isShow.toggle()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
