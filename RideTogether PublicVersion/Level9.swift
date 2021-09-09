//
//  Level9.swift
//  RideTogether
//
//  Created by lili wilson on 3/6/21.
//

import SwiftUI

struct Level9: View {
    @ObservedObject var levels: Levels
    @State private var showComplete = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Rectangle().foregroundColor(Color(red: 251/255, green: 125/255, blue: 110/255)).ignoresSafeArea()
                
                
                VStack {
                    Text("*end message*")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center).foregroundColor(.white)
                    
                    
                    Text("Click on us to officially WIN THE GAME!").padding(.top,20).foregroundColor(.white)
                    Button(action: {
                        self.levels.levelsCompleted[6]=true
                        
                        self.showComplete.toggle()
                    }) {
                        Image("lj4").resizable().aspectRatio(contentMode: .fit).padding(.horizontal,20).background(Color.white).cornerRadius(20).padding(.bottom,20)
                    }
                   
                    
                }
                
                if self.showComplete {
                    Level9Complete().onTapGesture {
                        withAnimation {
                            self.showComplete.toggle()
                        }
                    }
                }
                
            }
        }
       
        
    }
}

struct Level9_Previews: PreviewProvider {
    static var previews: some View {
        Level9(levels: Levels(name:"hi",levelsCompleted:[false, false,false,false,false,false,false,false,false,false]))
    }
}

struct Level9Complete : View {
    var body : some View {
        ZStack {
            Rectangle().foregroundColor(Color.black.opacity(0.25)).ignoresSafeArea()
            VStack {
                Text("You completed RIDE TOGETHER.")
                    .multilineTextAlignment(.center).foregroundColor(Color.black)
                
            }.padding()
            .background(Color.white)
            .cornerRadius(15).padding(.horizontal,50)
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}


