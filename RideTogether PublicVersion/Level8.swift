//
//  Level8.swift
//  RideTogether
//
//  Created by lili wilson on 2/19/21.
//

import SwiftUI

struct Level8: View {
    @ObservedObject var levels: Levels
    @State private var showComplete = false
    @State private var answer: String = ""

    var body: some View {
        NavigationView {
            ZStack {
                Rectangle().foregroundColor(Color(red: 103/255, green: 71/255, blue: 147/255)).ignoresSafeArea()
                
                Rectangle().foregroundColor(Color(red: 182/255, green: 102/255, blue: 210/255)).rotationEffect(Angle(degrees: 45)).ignoresSafeArea()
                
                VStack {
                    HStack {
                        Image("lili2").resizable().aspectRatio(contentMode:.fit).padding(.horizontal, 25).frame(width: nil)
                        VStack {
                            Text("Level 5").font(.title).foregroundColor(.white)
                            Text("Find the wrod.")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                        Image("j2").resizable().aspectRatio(contentMode:.fit).padding(.horizontal,20)
                    }
                        
                    
                    VStack {
                    Spacer()
                        VStack{
                            HStack {
                                
                                Text("!").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("8").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text(",").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("@").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("!").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("-").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("'").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("3").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                            }
                            HStack {
                                Text("6").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("9").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("7").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                            }
                            HStack {
                                Text("5").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("$").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("9").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("7").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text(")").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("$").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("5").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                            }
                            HStack {
                                Text("2").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("-").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                
                            }
                            Text("-").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                            HStack {
                                Text("5").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("6").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("0").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                                Text("9").foregroundColor(Color.black).padding(.all,10).padding(.horizontal,3).background(RoundedRectangle(cornerRadius:10).fill(Color.white).shadow(color:.gray,radius:2,x:0,y:2))
                            }
                        }
                    
                    Spacer()
                    Text("Answer:").foregroundColor(Color.white)
                    
                    TextField("Enter a 4 letter word...", text: $answer).textFieldStyle(RoundedBorderTextFieldStyle()).padding([.horizontal],80)
                        
                    Button(action: {
                        if self.answer.lowercased() == "answer" {
                            self.levels.levelsCompleted[4] = true
                            self.showComplete.toggle()
                        }
                        self.answer = ""
                    }) {
                        
                        Image(systemName: "checkmark.circle.fill").foregroundColor(.white).padding(6).background(Color(red: 225/255, green: 158/255, blue: 248/255)).cornerRadius(10).padding(.bottom,20)
                    }
                    }
                }
                if self.showComplete {
                    
                    Level8Complete().onTapGesture {
                        withAnimation{ self.showComplete.toggle()
                        }
                    }
                    
                }
            }
        }.navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct Level8_Previews: PreviewProvider {
    static var previews: some View {
        Level8(levels: Levels(name:"hi",levelsCompleted:[false, false,false,false,false,false,false,false,false,false]))
    }
}


struct Level8Complete : View {
    var body : some View {
        ZStack {
            Rectangle().foregroundColor(Color.black.opacity(0.25)).ignoresSafeArea()
            VStack {
                Text("You completed LEVEL 5.")
                    .multilineTextAlignment(.center).foregroundColor(Color.black)
                
            }.padding()
            .background(Color.white)
            .cornerRadius(15).padding(.horizontal,50)
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}

