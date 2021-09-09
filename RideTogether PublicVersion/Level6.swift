//
//  Level6.swift
//  RideTogether
//
//  Created by lili wilson on 2/17/21.
//

import SwiftUI

struct Level6: View {
    @ObservedObject var levels: Levels
    @State private var complete = false
    
    @State private var currWord: String = ""
   
    @State private var storedWords: [String] = []
    @State private var validWords = ["retransmit", "overcommit", "pretermit", "presummit", "transmit", "resubmit", "recommit", "sublimit", "intromit", "intermit", "prelimit", "preadmit", "delimit", "readmit", "manumit", "thermit", "bevomit", "coadmit", "summit", "permit", "submit", "commit", "hermit", "dammit", "reemit", "limit", "admit", "remit", "vomit", "demit", "emit", "omit", "smit"]
    
    @State private var points = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle().foregroundColor(Color(red: 98/255, green: 121/255, blue:184/255)).ignoresSafeArea()
                
                Rectangle().foregroundColor(Color(red: 142/255, green: 164/255, blue: 210/255)).rotationEffect(Angle(degrees: -45)).ignoresSafeArea()
                
                VStack {
                    HStack {
                        Image("lili3").resizable().aspectRatio(contentMode:.fit).padding(10).frame(width: nil)
                        VStack {
                            Text("Level 6").font(.title).foregroundColor(.white)
                            Text("Get more than 60 points by finding words that end in MIT.")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                        Image("j3").resizable().aspectRatio(contentMode:.fit).padding(5)
                    }
                    
                    
                    Spacer()
                    
                    ZStack {
                        Image(systemName: "hexagon.fill").resizable().aspectRatio(contentMode:.fit).foregroundColor(.white).rotationEffect(Angle(degrees:90)).padding(.horizontal,140)
                        Image(systemName: "hexagon").resizable().aspectRatio(contentMode:.fit).foregroundColor(Color(red: 98/255, green: 121/255, blue:184/255)).rotationEffect(Angle(degrees:90)).padding(.horizontal,140)
                        Text(String(self.points)).foregroundColor(Color.black)
                            .font(.largeTitle).padding(15)
                    }
                    
                    
                    
                    // Start with words that END in mit
                    if currWord.lowercased().contains("mit") {
                        HStack {
                            Spacer()
                            let index = currWord.index(currWord.endIndex, offsetBy: -3)
                            Text(currWord[..<index].uppercased())
                                .font(.largeTitle)
                            Image("mit").resizable().aspectRatio(contentMode: .fit).frame(width: 50.0, height: 30)
                            Spacer()
                        }.padding(.vertical, 40)
                    } else if currWord == "" {
                        Text(" ")
                            .font(.largeTitle).padding([.vertical],40)
                    } else {
                        Text(currWord.uppercased())
                            .font(.largeTitle).padding([.vertical],40)
                    }
                    
                    TextField("Type something...", text: $currWord).padding(.horizontal,80)
                    
                    Button(action: {
                        
                        if validWords.contains(currWord.lowercased()) && !storedWords.contains(currWord.lowercased()) {
                            storedWords.append(currWord.lowercased())
                            points = points + currWord.count
                            
                            if points >= 60 {
                                self.levels.levelsCompleted[5] = true
                                
                                self.complete.toggle()
                            }
                        }
                        
                        self.currWord = ""
                        
                        // if the word is valid, (in valid words and not stored words), add to storedwords and increment score
                        
                        // add a "wrong" message at some point
                    }) {
                        
                        Image(systemName: "checkmark.circle.fill").foregroundColor(.white).padding(6).background(Color(red: 98/255, green: 121/255, blue:184/255)).cornerRadius(10).padding(.bottom,20)
                    }
                    
                    List(storedWords.reversed(), id:\.self) {
                        Text($0).foregroundColor(.blue)
                    }.padding([.horizontal],40).padding(.bottom,20)
                        
                        
                    
                        
                }
                if self.complete {
                    Level6Complete().onTapGesture{
                        withAnimation {
                            self.complete.toggle()
                        }
                    }
                }
            }
        }.navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct Level6_Previews: PreviewProvider {
    static var previews: some View {
        Level6(levels: Levels(name:"hi",levelsCompleted:[false,false,false,false,false,false,false]))
    }
}


struct Level6Complete : View {
    var body : some View {
        ZStack {
            Rectangle().foregroundColor(Color.black.opacity(0.25)).ignoresSafeArea()
            VStack {
                Text("You completed LEVEL 6.")
                    .multilineTextAlignment(.center).foregroundColor(Color.black)
                
            }.padding()
            .background(Color.white)
            .cornerRadius(15).padding(.horizontal,50)
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}

