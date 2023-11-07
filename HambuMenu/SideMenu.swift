//
//  SideMenuView.swift
//  HambuMenu
//
//  Created by Macbook Pro on 2/11/2023.
//

import SwiftUI

struct SideMenu: View {
    @Binding var sideMenuIsShowing: Bool
    var content: AnyView
    var edgeTrans: AnyTransition = .move(edge: .leading) //Idea About RTL
    var body: some View {
        ZStack(alignment: .bottom) {
            if sideMenuIsShowing {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        sideMenuIsShowing.toggle()
                    }
                content
                    .transition(edgeTrans)
                    .background(
                        Color.clear
                    )
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeOut, value: sideMenuIsShowing)
    }
}
//struct SideMenuView_Previews: PreviewProvider {
//    static var previews: some View {
//        SideMenuView(sideMenuIsShowing: .constant(true))
//    }
//}
