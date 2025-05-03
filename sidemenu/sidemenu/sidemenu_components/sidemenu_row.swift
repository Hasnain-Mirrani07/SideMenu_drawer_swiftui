//
//  sidemenu_row.swift
//  sidemenu
//
//  Created by mac on 03/05/2025.
//


import SwiftUI

struct SideMenuRow: View {
    let item: SideMenuItemModel
    @Binding var selectedModel: SideMenuItemModel?
    
    private var isSelected: Bool {
     return selectedModel == item
    }
    
    var body: some View {
     HStack{
         Image(systemName: item.systemImageName)
             .imageScale(.small)
         Text(item.title)
             .font(.subheadline)
         Spacer()
         
        }
     .padding(.leading)
     .foregroundStyle(isSelected ? Color.blue : Color.gray)
     .frame(width: 216, height: 50)
     .background(isSelected ? Color.blue.opacity(0.15) : .clear)
     .clipShape(RoundedRectangle(cornerRadius: 10))
    
    }
}
#Preview {
    SideMenuRow(item: .dashboard, selectedModel: .constant(.dashboard))
}
