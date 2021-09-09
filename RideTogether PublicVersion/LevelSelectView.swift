//
//  LevelSelectView.swift
//  RideTogether
//
//  Created by lili wilson on 1/2/21.
//

import SwiftUI


class Levels: ObservableObject {
    @Published var name: String
    @Published var levelsCompleted: [Bool]
    
    init(name: String, levelsCompleted: [Bool]) {
        self.name = name
        self.levelsCompleted = levelsCompleted
    }
}

struct LevelSelectView: View {
    
    @ObservedObject var levels = Levels(name: "Name", levelsCompleted: [false,false,false,false,false,false,false])
    
    
    @State var lvl9Warning = false

    
    // when a level is completed, the part of the array that is index level-1 will switch to true
        
    var body: some View {
        NavigationView{
            ZStack{
                //Background
                Rectangle().foregroundColor(Color(red: 227/255, green: 66/255, blue: 85/255)).ignoresSafeArea()
                
                Rectangle().foregroundColor(Color(red: 251/255, green: 125/255, blue: 110/255)).rotationEffect(Angle(degrees: -45)).ignoresSafeArea()
                
                VStack{
                    
                    Spacer()
                    
                    Text("Select a Level!")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    
                    Text("You must clear every level in order to beat the game (although, you do not necessarily need to do them in order).")
                        .foregroundColor(Color.white)
                        .padding(.all).padding(.bottom, 10).multilineTextAlignment(.center)
                    
                    
                    HStack{
                        Spacer()
                        
                        NavigationLink(destination: Level1(levels: self.levels)) {
                            if !self.levels.levelsCompleted[0] {
                                Text("1")
                                    .font(.title).foregroundColor(.pink).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.white).cornerRadius(20)
                            } else {
                                Text("1")
                                    .font(.title).foregroundColor(.white).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.green).cornerRadius(20)
                            }
                            
                            }
                        
                        
                        
                        Spacer()
                        
                        NavigationLink(destination: Level2(levels: self.levels)) {
                            if !self.levels.levelsCompleted[1] {
                                Text("2")
                                    .font(.title).foregroundColor(.pink).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.white).cornerRadius(20)
                            } else {
                                Text("2")
                                    .font(.title).foregroundColor(.white).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.green).cornerRadius(20)
                            }
                            
                            }
                        
                        
                        Spacer()
                        
                        NavigationLink(destination: Level3(levels:self.levels)) {
                            if !self.levels.levelsCompleted[2] {
                                Text("3")
                                    .font(.title).foregroundColor(.pink).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.white).cornerRadius(20)
                            } else {
                                Text("3")
                                    .font(.title).foregroundColor(.white).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.green).cornerRadius(20)
                            }
                            
                            }
                        
                        Spacer()
                        
                    }
                    
                    Spacer()
                    
                    HStack{
                        Spacer()
                        
                        NavigationLink(destination: Level4(levels:self.levels)) {
                            
                            if !self.levels.levelsCompleted[3] {
                                Text("4")
                                    .font(.title).foregroundColor(.pink).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.white).cornerRadius(20)
                            } else {
                                Text("4")
                                    .font(.title).foregroundColor(.white).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.green).cornerRadius(20)
                            }
                            }
                        
                        Spacer()
                        
                        
                        NavigationLink(destination: Level8(levels: self.levels)) {
                            if !self.levels.levelsCompleted[4] {
                                Text("5")
                                    .font(.title).foregroundColor(.pink).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.white).cornerRadius(20)
                            } else {
                                Text("5")
                                    .font(.title).foregroundColor(.white).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.green).cornerRadius(20)
                            }
                            
                            }
                        
                        Spacer()
                        
                        NavigationLink(destination: Level6(levels:self.levels)) {
                            if !self.levels.levelsCompleted[5] {
                                Text("6")
                                    .font(.title).foregroundColor(.pink).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.white).cornerRadius(20)
                            } else {
                                Text("6")
                                    .font(.title).foregroundColor(.white).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.green).cornerRadius(20)
                            }
                            
                            }
                        
                        Spacer()
                        
                    }
                    
                    Spacer()
                    
                    HStack{
                        Spacer()
                        
                       
                        
                        if self.levels.levelsCompleted[..<6].contains(false) {
                            
                            Button(action: {
                                withAnimation{
                                    self.lvl9Warning.toggle()
                                }
                            }) {
                                Text("7")
                                    .font(.title).foregroundColor(.white).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.gray).cornerRadius(20)
                            }
                        } else {
                            NavigationLink(destination: Level9(levels:self.levels).navigationBarTitle("")
                                            .navigationBarHidden(true)) {
                                
                                if !self.levels.levelsCompleted[6] {
                                    Text("7")
                                        .font(.title).foregroundColor(.pink).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.white).cornerRadius(20)
                                } else {
                                    Text("7")
                                        .font(.title).foregroundColor(.white).bold().padding(.all, 15).padding(.horizontal, 10).background(Color.green).cornerRadius(20)
                                }
                                
                                
                        }
                        }
                        
                        
                        Spacer()
                        
                        
                        
                    }
                    
                    Image("moltres").resizable().aspectRatio(contentMode: .fit).padding(.horizontal,80).padding(.top,20)
                    
                }
                
                if self.lvl9Warning {
                    
                    Level9Message().onTapGesture {
                        withAnimation{ self.lvl9Warning.toggle()
                        }
                    }
                    
                }
                                  
                                  
                    
            }.navigationBarHidden(true)
        }
        
    }
}

struct LevelSelectView_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelectView()
    }
}

struct Level9Message : View {
    var body : some View {
        ZStack {
            Rectangle().foregroundColor(Color.black.opacity(0.65)).ignoresSafeArea()
            VStack {
                Text("You must complete all other levels to unlock level 7.")
                    .multilineTextAlignment(.center).padding(.bottom,10).foregroundColor(Color.black)
                
            }.padding()
            .background(Color.white)
            .cornerRadius(15).padding(.horizontal,50)
        }
        
    }
}


extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
