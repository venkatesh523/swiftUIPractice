//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by Venkateshwarlu on 14/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isPressed = false
    @State private var shouldNavigate = false

    var body: some View {
        //Icon and Text Button
        NavigationView {
            NavigationLink(destination: ListView()){
                Text("Next")
                Image(systemName: "square.and.arrow.down.fill")
            }.navigationTitle("List")
        }
        /*
        //ANimated button
        Button(action: {
            self.isPressed.toggle()
        }, label: {
            Text("Button")
        })
        
        //Aspect ratio
        Image(.blankCampagin)
            .resizable()
            .scaledToFit()
            .aspectRatio(contentMode: .fit)
        //Frame
        Image(.blankCampagin)
            .resizable()
            .frame(width: 300, height: 300, alignment: .bottom)
        //shape
        Image(.blankCampagin)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 5))
        Image(.blankCampagin)
            .resizable()
            .clipShape(Circle())
        //system symbol
        Image(.blankCampagin)
            .font(.largeTitle)
        */
      }
}

#Preview {
    ContentView()
}
