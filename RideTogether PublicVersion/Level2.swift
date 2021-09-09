//
//  Level2.swift
//  RideTogether
//
//  Created by lili wilson on 1/5/21.
//

import SwiftUI

struct Level2: View {
    @ObservedObject var levels: Levels
    @State private var showComplete = false
    
    @State private var answer: String = ""
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle().foregroundColor(Color(red: 137/255, green: 177/255, blue: 136/255)).ignoresSafeArea()
                
                Rectangle().foregroundColor(Color(red: 107/255, green: 162/255, blue:122/255)).rotationEffect(Angle(degrees: -45)).ignoresSafeArea()
                
                VStack {
                    HStack {
                        Image("lili2").resizable().aspectRatio(contentMode:.fit).padding(10)
                        VStack {
                            Text("Level 2").font(.title).foregroundColor(.white)
                            Text("Find the 4 letter \nword.")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                        Image("j2").resizable().aspectRatio(contentMode:.fit).padding(5)
                    }
                    
                    
                    Spacer()
                    
                    
                    VStack {
                        HStack {
                            Text("12 days, 3 days, at 11:00am")
                                .foregroundColor(Color.black)
                                .padding().padding(.horizontal,12).background(Color.white).cornerRadius(20)
                            Text("11").foregroundColor(Color.black).padding().padding(.horizontal,1).background(Color.white).cornerRadius(20)
                        }.font(.callout)
                        HStack {
                            Text("79 days, 70 days, at 12:30pm").foregroundColor(Color.black).padding().padding(.horizontal,5).background(Color.white).cornerRadius(20)
                            Text("7").foregroundColor(Color.black).padding().padding(.horizontal,3).background(Color.white).cornerRadius(20)
                        }.font(.callout)
                        HStack {
                            Text("301 days, 292 days, at 1:30pm").foregroundColor(Color.black).padding().padding(.horizontal,0.5).background(Color.white).cornerRadius(20)
                            Text("9").foregroundColor(Color.black).padding().padding(.horizontal,3).background(Color.white).cornerRadius(20)
                                                
                        }.font(.callout)
                        HStack {
                            Text("365 days, 356 days, at 4:15pm").foregroundColor(Color.black).padding().background(Color.white).cornerRadius(20)
                            Text("15").foregroundColor(Color.black).padding().background(Color.white).cornerRadius(20)
                        }.font(.callout)
                        
                        Image(systemName: "arrow.backward.circle").foregroundColor(.white).font(.largeTitle).padding(.all)
                       
                    

                    }
                   
//
                    Spacer()
                    
                    Text("Answer:").foregroundColor(Color.white)
                    
                    TextField("Enter a 4 letter word...", text: $answer).textFieldStyle(RoundedBorderTextFieldStyle()).padding([.horizontal],80)
                    
                    Button(action: {
                        if self.answer.lowercased() == "soln" {
                            self.levels.levelsCompleted[1] = true
                            self.showComplete.toggle()
                        }
                        self.answer = ""
                    }) {
                        
                        Image(systemName: "checkmark.circle.fill").foregroundColor(.white).padding(6).background(Color(red: 91/255, green: 143/255, blue: 105/255)).cornerRadius(10).padding(.bottom,20)
                    }
                    
                    
                    
                }
                if self.showComplete {
                    
                    Level2Complete().onTapGesture {
                        withAnimation{ self.showComplete.toggle()
                        }
                    }
                    
                }
            }
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}

struct Level2_Previews: PreviewProvider {
    static var previews: some View {
        Level2(levels: Levels(name:"hi",levelsCompleted:[false, false]))
    }
}

struct Level2Complete : View {
    var body : some View {
        ZStack {
            Rectangle().foregroundColor(Color.black.opacity(0.25)).ignoresSafeArea()
            VStack {
                Text("You completed LEVEL 2.")
                    .multilineTextAlignment(.center).foregroundColor(Color.black)
                
            }.padding()
            .background(Color.white)
            .cornerRadius(15).padding(.horizontal,50)
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}
