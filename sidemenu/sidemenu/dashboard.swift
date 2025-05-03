//
//  ContentView.swift
//  sidemenu
//
//  Created by mac on 03/05/2025.
//

import SwiftUI

struct DashboardView: View {
    @State private var shwoMenu = false
    var body: some View {
        NavigationStack{
            ZStack {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }
                .padding()
                
                SideMenuView(isShowMenu: $shwoMenu)
                
           
            }
            .toolbar(shwoMenu ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                    
                // Toobar Item1
                ToolbarItem(placement: .topBarLeading){
                    
                    // Toobar Item action Button
                    Button(action: {
                        shwoMenu.toggle()
                        print("Tapped  \(shwoMenu)")
                    }, label: {
                        Image(systemName: "line.horizontal.3")
                    })
                }
                
                // Toobar Item2
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "ellipsis")
                }
                
            }
            
        }
   
    }
}

#Preview {
    DashboardView()
}
