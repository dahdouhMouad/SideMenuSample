//
//  ContentView.swift
//  HambuMenu
//
//  Created by Macbook Pro on 2/11/2023.
//

import SwiftUI

struct HomeView: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        VStack {
            HStack {
                Button {
                    //Action
                    presentSideMenu.toggle()
                } label: {
                    Image("menu")
                        .resizable()
                        .frame(width:32,height: 32)
                }
                Spacer()
            }
            .padding()
            
            Spacer()
            
            Text("HomeView")
            
            Spacer()
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
