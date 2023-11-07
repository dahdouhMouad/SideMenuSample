//
//  InfoView.swift
//  HambuMenu
//
//  Created by Macbook Pro on 2/11/2023.
//

import SwiftUI

struct InfoView: View {
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
            
            Text("Info")
            
            Spacer()
        }
    }
}


