//
//  ContentView.swift
//  RideTogether
//
//  Created by lili wilson on 12/28/20.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ZStack {
                //Background
                Rectangle().foregroundColor(Color(red: 251/255, green: 125/255, blue: 110/255)).ignoresSafeArea()
                
                Rectangle().foregroundColor(Color(red: 227/255, green: 66/255, blue: 85/255)).rotationEffect(Angle(degrees: 45)).ignoresSafeArea()
                
                // Title Stuff
                VStack{
                    
                    Spacer()
                    Spacer()
                        
                    Image("snorlax").resizable().aspectRatio(contentMode: .fit).padding(.horizontal, 80)
                   
                    
                    Text("Ride Together!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.vertical)
                    
                    Text("a game by lili")
                        .foregroundColor(Color.white)
                        .padding(.bottom)
                    
                    NavigationLink(destination: LevelSelectView().navigationBarHidden(true)) {
                        Text("Start")
                            .fontWeight(.bold)
                            .foregroundColor(Color.pink)
                            .padding(.all, 10).padding(.horizontal, 30).background(Color.white)
                            .cornerRadius(20)
                        }
                    
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }.navigationBarHidden(true)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
