//
//  sidemenu_view.swift
//  sidemenu
//
//  Created by mac on 03/05/2025.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowMenu: Bool
    @State private var sideMenuItemModel: SideMenuItemModel?
    var body: some View {
    
            ZStack{
                if isShowMenu {
                    Rectangle()
                        .fill(Color.black.opacity(0.5))
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            isShowMenu.toggle()
                        }
                    HStack{
                        VStack(alignment: .leading,spacing: 32) {
                            SideMenuHeader()
                            VStack{
                                ForEach(SideMenuItemModel.allCases) { item in
                                    Button(action:{
                                        sideMenuItemModel = item
                                        
                                    } , label: {
                                        SideMenuRow(item: item, selectedModel: $sideMenuItemModel)
                                    })
                                }
                            }
                            Spacer()
                            
                        }
                        .frame(width: 270,alignment: .leading)
                        .background(.white)
                        Spacer()
                    }
              
                }
            }
            .transition(.move(edge: .leading))
            .animation(.easeInOut, value: isShowMenu)
        
    }
}



struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowMenu: .constant(true))
    }
}
