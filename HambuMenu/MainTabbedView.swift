//
//  MainTabbedView.swift
//  HambuMenu
//
//  Created by Macbook Pro on 2/11/2023.
//

import SwiftUI

struct MainTabbedView: View {
    
    @State var presentSideMenu = false
    @State var selectedSideMenuTab = 0
    
    var body: some View {
        NavigationStack {
            ZStack{
                TabView(selection: $selectedSideMenuTab) {
                    NavigationStack {
                        HomeView(presentSideMenu: $presentSideMenu)
                            .tag(0)
                            .navigationBarTitle("Page 1")
                    }
                        
                    NavigationStack {
                        InfoView(presentSideMenu: $presentSideMenu)
                            .tag(1)
                            .navigationBarTitle("Page 2")
                    }
                }
            
                SideMenu(sideMenuIsShowing: $presentSideMenu, content: AnyView(SideMenuView(selectedSideMenuTab: $selectedSideMenuTab, presentSideMenu: $presentSideMenu)))
            }
        }
        
    }
}

struct MainTabbedView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabbedView()
    }
}
