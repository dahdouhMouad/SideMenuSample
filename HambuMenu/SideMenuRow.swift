//
//  SideMenuRow.swift
//  HambuMenu
//
//  Created by Macbook Pro on 2/11/2023.
//

import Foundation

enum SideMenuRow: Int, CaseIterable {
    case home = 0
    case info
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .info:
            return "Info"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "home"
        case .info:
            return "home"
        }
    }
    
}
