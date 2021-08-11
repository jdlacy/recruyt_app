//
//  ContentView.swift
//  recruyt_app
//
//  Created by Student Account on 8/9/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var showMenu = false
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded{
                if $0.translation.width < -100 {
                    withAnimation{self.showMenu = false}
                }
            }
        return NavigationView {
            GeometryReader { geometry in
                ZStack(alignment:.leading){
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                       .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            .navigationBarTitle("Recruyt", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation{
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
            ))
        }
    }
}

struct MainView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        VStack{
            
                   Image("Recruyt_Logo")
                       .resizable()
                    .frame(width:200,height:200)
                    .padding(.top, -200)
                    .padding(.bottom, 50)
            
               
            Text("Welcome to Entry Level Tech Help")
            Text("Powered by Recruyt")
                .padding(20)
            Text("Recruyt LinkedIn")
                .padding(5)
            Text("Interview Tips")
                .padding(5)
            Text("Interview Prep")
                .padding(5)
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

