//
//  GldoMenuOprtisnMOdels1.swift
//  sidemenu
//
//  Created by mac on 03/05/2025.
//


import SwiftUI

enum SideMenuItemModel: Int, CaseIterable {
    case dashboard
    case parformaoe
    case peofILe
    case reerh
    case notifIoations
    
    var title: String {
        switch self {
        case .dashboard:
            return "Dashbaord"
        case .parformaoe:
            return "Perfomance"
        case .peofILe:
            return "Profile"
        case .reerh:
            return "Search"
        case .notifIoations:
            return "Notifications"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .dashboard:
            return "house"
        case .parformaoe:
            return "chart.bar"
        case .peofILe:
            return "person.crop.circle"
        case .reerh:
            return "magnifyingglass"
        case .notifIoations:
            return "bell"
        }
    }
 
}

extension SideMenuItemModel: Identifiable {
    var id: Int {
      return  self.rawValue
    }
    
}
