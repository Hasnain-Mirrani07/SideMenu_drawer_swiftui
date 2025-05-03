//
//  sidemenuheader.swift
//  sidemenu
//
//  Created by mac on 03/05/2025.
//

import SwiftUI

public struct SideMenuHeader: View {
    public var body: some View {
     HStack{
         Image(systemName:"person.circle.fill")
             .imageScale(.large)
             .foregroundStyle(.white)
             .frame(width: 48, height: 48)
             .background(.blue)
             .clipShape(RoundedRectangle(cornerRadius: 10))
             .padding(.leading)
             
         VStack(alignment: .leading){
             Text("John Doe")
                 .font(.headline)
                 .foregroundColor(.black)
             Text("Muhammad Hasnain Mirrani")
                 .font(.caption)
                 .lineLimit(1)
                 .foregroundColor(.gray)
//             Text("johndoe@example.com")
//                 .font(.caption)
//                 .lineLimit(1)
//                 .foregroundColor(.gray)
//                 .foregroundColor(.black)
      
         }
      
        }
    }
}


struct SideMenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeader()
    }
}
