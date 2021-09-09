//
//  Level4.swift
//  RideTogether
//
//  Created by lili wilson on 2/17/21.
//

import SwiftUI

struct Level4: View {
    @ObservedObject var levels: Levels
    @State private var showComplete = false
    @State private var firePressed = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Rectangle().foregroundColor(Color(red: 137/255, green: 177/255, blue: 136/255)).ignoresSafeArea()
                
                Rectangle().foregroundColor(Color(red: 107/255, green: 162/255, blue:122/255)).rotationEffect(Angle(degrees: -45)).ignoresSafeArea()
                
                VStack {
                    
                    HStack {
                        Image("lili1").resizable().aspectRatio(contentMode:.fit).padding(.horizontal,40)
                        VStack {
                            Text("Level 4").font(.title).foregroundColor(.white)
                            Text("Save Lili.")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                            
                        }
                        
                        Image("johnny1").resizable().aspectRatio(contentMode:.fit).padding(.horizontal,35).padding(.leading,5)
                    }
                   
                    
                    Spacer()
                    
                    
                    VStack{
                        HStack{
                            Button(action: {self.firePressed = false}) {
                                Image("bicycle").resizable().aspectRatio(contentMode:.fit).padding(.all, 20)
                                
                            }
                            Button(action: {self.firePressed = false}) {
                                Image("elevator_lift").resizable().aspectRatio(contentMode:.fit).padding(.all, 20)
                            }
                            
                            Button(action:{
                                if self.firePressed {
                                    
                                    self.levels.levelsCompleted[3] = true
                                    
                                    self.showComplete.toggle()
                                }}) {
                                Image("plank").resizable().aspectRatio(contentMode:.fit).padding(.trailing, 20)
                            }
                            
                             
                           
                        }
                        HStack{
                            Button(action:{self.firePressed = false}) {
                                ZStack {
                                    Image("bird").resizable().aspectRatio(contentMode:.fit).padding([.top, .bottom,.leading],20).padding(.trailing,60)
                                    
                                    Image("dog").resizable().aspectRatio(contentMode:.fit).padding([.top,.bottom,.trailing],20).padding(.leading,60)
                                }
                            }
   
                            
                            Image("lilisweat").resizable().aspectRatio(contentMode:.fit).padding()
                            
                            
                           
                            Button(action:{self.firePressed = false}) {
                                Image("skate1").resizable().aspectRatio(contentMode:.fit).padding(.all,20)
                            }
                            
                            
                        }
                        
                        // use emojis as a code for each one? ex ) fire = firework - work
                        VStack {
                            HStack {
                                
                                Button(action: {self.firePressed = false}) {
                                    Text("U+1F6E0").foregroundColor(Color(red: 107/255, green: 162/255, blue:122/255)).padding(12).padding(.horizontal,5).background(Color.white).cornerRadius(15)
                                    // hammer and wrench
                                }
                                
                                Button(action: {self.firePressed = false}) {
                                    Text("U+1F4A3").padding(12).padding(.horizontal,5).background(Color.white).cornerRadius(15).foregroundColor(Color(red: 107/255, green: 162/255, blue:122/255))
                                    // bomb
                                }
                                
                                Button(action: {
                                    self.firePressed = true
                                    
                                }) {
                                    Text("U+1F525").padding(12).padding(.horizontal,5).background(Color.white).cornerRadius(15).foregroundColor(Color(red: 107/255, green: 162/255, blue:122/255))
                                    
                                   
                                }
                            }.padding(.top,25)
                            
                            HStack {
                                Button(action: {self.firePressed = false}) {
                                    Text("U+1F52A").padding(12).padding(.horizontal,5).background(Color.white).cornerRadius(15).foregroundColor(Color(red: 107/255, green: 162/255, blue:122/255))
                                    // knife
                                }
                                
                                Button(action: {self.firePressed = false}) {
                                    Text("U+1F50C").padding(12).padding(.horizontal,5).background(Color.white).cornerRadius(15).foregroundColor(Color(red: 107/255, green: 162/255, blue:122/255))
                                    // electric
                                }
                                
                                Button(action: {self.firePressed = false}) {
                                    Text("U+1F52E").padding(12).padding(.horizontal,5).background(Color.white).cornerRadius(15).foregroundColor(Color(red: 107/255, green: 162/255, blue:122/255))
                                    
                                }
                            }
                        }
                        
                        
                    }
                    Spacer()

                }
                if self.showComplete {
                    
                    Level4Complete().onTapGesture {
                        withAnimation{ self.showComplete.toggle()
                        }
                    }
                    
                }
            }
        }.navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct Level4_Previews: PreviewProvider {
    static var previews: some View {
        Level4(levels: Levels(name:"hi",levelsCompleted:[false, false,false,false]))
    }
}


struct Level4Complete : View {
    var body : some View {
        ZStack {
            Rectangle().foregroundColor(Color.black.opacity(0.25)).ignoresSafeArea()
            VStack {
                Text("You completed LEVEL 4. \n\n Ride together, exercise together! (and, do planks... *shudder*)")
                    .multilineTextAlignment(.center).foregroundColor(Color.black)
                
            }.padding()
            .background(Color.white)
            .cornerRadius(15).padding(.horizontal,50)
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}





