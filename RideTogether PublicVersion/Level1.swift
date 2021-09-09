//
//  Level1.swift
//  RideTogether
//
//  Created by lili wilson on 1/2/21.
//

import SwiftUI

struct Level1: View {
    @ObservedObject var levels: Levels
    @State private var showComplete = false
    
    @State private var comPct = 80
    @State private var rarePct = 20
    @State private var legPct = 0
    
    @State private var quirks = [["Engine", "Voice", "Gigantification", "Hardening", "Jet", "Regeneration", "Zero Gravity", "Somnambulist", "Navel Laser", "Tail"], ["Dark Shadow", "Cremation", "Quirkless", "Muscle Augmentation", "Decay", "Creation", "Frog"], ["All for One", "One for All", "Half-Hot Half-Cold", "Explosion", "Overhaul", "Fierce Wings"]]
    
    @State private var currentChoice = 0
    @State private var quirk = ""
    
    
    var body: some View {
        
        NavigationView{
    
        
        ZStack{
            
            Rectangle().foregroundColor(Color(red: 103/255, green: 71/255, blue: 147/255)).ignoresSafeArea()
            
            Rectangle().foregroundColor(Color(red: 182/255, green: 102/255, blue: 210/255)).rotationEffect(Angle(degrees: 45)).ignoresSafeArea()
        
            VStack{

                HStack {
                    Image("lili1").resizable().aspectRatio(contentMode:.fit).padding(10)
                    VStack {
                        Text("Level 1").font(.title).foregroundColor(.white)
                        Text("Get a legendary quirk.")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                    }
                    
                    Image("j1").resizable().aspectRatio(contentMode:.fit).padding(.leading,10)
                }
                
            
                Spacer()
                
                if currentChoice == 0 {
                    Text(String(self.quirk))
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                } else if currentChoice == 1 {
                    Text(String(self.quirk))
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red:44/255,green:67/255,blue:56/255))
                } else {
                    Text(String(self.quirk))
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red:163/255,green:42/255,blue:29/255))
                }
                
                Spacer()
                
                Button(action: {
                    
                    let chosen = Int.random(in:0...100)
                    if chosen < comPct {
                        self.currentChoice = 0
                    }
                    else if chosen < comPct + rarePct {
                        self.currentChoice = 1
                    } else {
                        self.currentChoice = 2
                    }
                    
                    quirk = quirks[currentChoice][Int.random(in:0...self.quirks[currentChoice].count-1)]
                    
                    if(currentChoice == 2) {
                        self.levels.levelsCompleted[0] = true
                        
                        self.showComplete = true
                    }
                        
                    
                }) {
                    Text("Spin for a Quirk!").font(.title).fontWeight(.bold).foregroundColor(.white).padding(.all,10).padding(.horizontal,20).background(Color(red: 96/255, green: 178/255, blue: 149/255)).cornerRadius(20)
                }
                
                Image("deku").resizable().aspectRatio(contentMode: .fit).padding(.horizontal,140).padding(.vertical,20)
                
                VStack{
                    HStack{
                        Text("Common").foregroundColor(Color(red: 96/255, green: 178/255, blue: 149/255)).padding(.all, 10).padding(.horizontal,5).background(Color.white).cornerRadius(10)
                        
                        Button(action: {
                            if self.comPct > 1 {
                                self.comPct -= 10
                                self.rarePct += 10
                            }
                        }) {
                            
                            if comPct < 10 {
                                Text(String(Int(comPct)) + "%").foregroundColor(Color(red: 96/255, green: 178/255, blue: 149/255)).padding(.all, 10).padding(.horizontal,5).background(Color.white).cornerRadius(10)
                            } else {
                                Text(String(Int(comPct)) + "%").foregroundColor(Color(red: 96/255, green: 178/255, blue: 149/255)).padding(.all, 10).background(Color.white).cornerRadius(10)
                            }
                            
                        }
                    }
                    
                    HStack{
                        Text(" Rare ").foregroundColor(Color(red: 96/255, green: 178/255, blue: 149/255)).padding(.all, 10).padding(.horizontal,18).background(Color.white).cornerRadius(10)
                        
                        Button(action: {
                            if self.rarePct > 1 {
                                self.rarePct -= 10
                                self.legPct += 10
                            }
                        }) {
                            if rarePct < 10 {
                            Text(String(Int(rarePct)) + "%").foregroundColor(Color(red: 96/255, green: 178/255, blue: 149/255)).padding(.all, 10).padding(.horizontal,5).background(Color.white).cornerRadius(10)
                            } else {
                                Text(String(Int(rarePct)) + "%").foregroundColor(Color(red: 96/255, green: 178/255, blue: 149/255)).padding(.all, 10).background(Color.white).cornerRadius(10)
                            }
                        }
                    }
                    HStack{
                        Text("Legendary").foregroundColor(Color(red: 96/255, green: 178/255, blue: 149/255)).padding(.all, 10).background(Color.white).cornerRadius(10)
                        
                        if legPct < 10 {
                            Text(String(Int(legPct)) + "%").foregroundColor(Color(red: 96/255, green: 178/255, blue: 149/255)).padding(.all, 10).padding(.horizontal,5).background(Color.white).cornerRadius(10)
                        } else {
                            Text(String(Int(legPct)) + "%").foregroundColor(Color(red: 96/255, green: 178/255, blue: 149/255)).padding(.all, 10).background(Color.white).cornerRadius(10)
                        }
                        
                    }
                    
                }.padding(.bottom,20)
                
                
                

            }
            if self.showComplete {
                
                Level1Complete().onTapGesture {
                    withAnimation{ self.showComplete.toggle()
                    }
                }
                
            }
        }
        }.navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct Level1_Previews: PreviewProvider {
    static var previews: some View {
        Level1(levels: Levels(name:"hi",levelsCompleted:[false]))
    }
}


struct Level1Complete : View {
    var body : some View {
        ZStack {
            Rectangle().foregroundColor(Color.black.opacity(0.25)).ignoresSafeArea()
            VStack {
                Text("You completed LEVEL 1.")
                    .multilineTextAlignment(.center).foregroundColor(Color.black)
                
            }.padding()
            .background(Color.white)
            .cornerRadius(15).padding(.horizontal,50)
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}


struct LevelComplete : View {
    var body : some View {
        ZStack {
            Rectangle().foregroundColor(Color.black.opacity(0.25)).ignoresSafeArea()
            VStack {
                Text("You completed this Level!")
                    .multilineTextAlignment(.center).foregroundColor(Color.black)
                
            }.padding()
            .background(Color.white)
            .cornerRadius(15).padding(.horizontal,50)
        }
        
    }
}
