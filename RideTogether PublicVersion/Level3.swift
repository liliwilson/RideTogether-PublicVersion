//
//  Level3.swift
//  RideTogether
//
//  Created by lili wilson on 1/7/21.
//

import SwiftUI

struct Level3: View {
    @ObservedObject var levels: Levels
    @State private var complete = false
    @State private var falseans = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle().foregroundColor(Color(red: 98/255, green: 121/255, blue:184/255)).ignoresSafeArea()
                
                Rectangle().foregroundColor(Color(red: 142/255, green: 164/255, blue: 210/255)).rotationEffect(Angle(degrees: 45)).ignoresSafeArea()
                
                VStack {
                    HStack {
                        Image("lili3").resizable().aspectRatio(contentMode:.fit).padding(10)
                        VStack {
                            Text("Level 3").font(.title).foregroundColor(.white)
                            Text("Pick the sweetest.")
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }
                        Button(action: {
                            self.levels.levelsCompleted[2]=true
                            
                            self.complete.toggle()
                        }) {
                            Image("j3").resizable().aspectRatio(contentMode:.fit).padding(5)
                        }
                       
                    }

                    
                    Spacer()
                    
                    HStack {
                        VStack {
                            Image("kitkat").resizable().aspectRatio(contentMode:.fit).cornerRadius(20).padding(5).padding(.horizontal,20)
                            Text("xk3%y").foregroundColor(Color.black).padding(.bottom, 10)
                            
                        }.background(Color.white.opacity(0.75)).cornerRadius(20).padding(15).padding(.leading,20)
                        
                        
                        VStack {
                            Image("cookie").resizable().aspectRatio(contentMode:.fit).cornerRadius(20).padding(5).padding(.horizontal,20)
                            
                            Text("b5c/2").foregroundColor(Color.black).padding(.bottom, 10)
                        }.background(Color.white.opacity(0.75)).cornerRadius(20).padding(15).padding(.trailing,20)
                        
                    }
                    
                    HStack {
                        VStack {
                            Image("brownie").resizable().aspectRatio(contentMode:.fit).cornerRadius(20).padding(5).padding(.horizontal,20)
                            
                            Text("6&3v").foregroundColor(Color.black).padding(.bottom, 10)
                        }.background(Color.white.opacity(0.75)).cornerRadius(20).padding([.bottom,.horizontal],15).padding(.leading,15).padding(.bottom,15)
                        
                        
                        VStack {
                            Image("eggloo").resizable().aspectRatio(contentMode:.fit).cornerRadius(20).padding(5).padding(.horizontal,20)
                            
                            Text("HgT4v9<").foregroundColor(Color.black).padding(.bottom, 10)
                        }.background(Color.white.opacity(0.75)).cornerRadius(20).padding([.bottom,.horizontal],15).padding(.trailing,20).padding(.bottom,15)
                        
                    }
                    
                    
                    TextField("Take your pick...", text:$falseans).padding(.horizontal,80).textFieldStyle(RoundedBorderTextFieldStyle()).padding(.bottom,20)
                    
                    Spacer()
                    
                }
                
                if self.complete {
                    Level3Complete().onTapGesture{
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

struct Level3_Previews: PreviewProvider {
    static var previews: some View {
        Level3(levels: Levels(name:"hi",levelsCompleted:[false, false,false]))
    }
}

struct Level3Complete : View {
    var body : some View {
        ZStack {
            Rectangle().foregroundColor(Color.black.opacity(0.25)).ignoresSafeArea()
            VStack {
                Text("You completed LEVEL 3. \n\n Ride together, EAT SWEETS and BE SWEET together!")
                    .multilineTextAlignment(.center).foregroundColor(Color.black)
                
            }.padding()
            .background(Color.white)
            .cornerRadius(15).padding(.horizontal,50)
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}

