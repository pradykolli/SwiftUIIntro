//
//  ThirdTab.swift
//  demo
//
//  Created by pradeep Kolli on 11/1/19.
//  Copyright © 2019 pradeep Kolli. All rights reserved.
//

import SwiftUI

struct ThirdTab: View {
    @State private var name = "Prady"
    @EnvironmentObject var names : NamesArray
    
    var body: some View {
        ZStack {
            VStack {
                Text("Hello Swift-UI!")
                
                HStack {
                    Text("Name: ").padding(.leading)
                                .padding(.trailing)
                    TextField("Name", text:$name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.trailing)
                }
                
                Text("Hello, \(name) !")
                Button(action:{
                    self.names.names.append(self.name)
                }){
                    Text("Add Name")
                }
                Spacer()
            }
        }
    }
}

struct ThirdTab_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTab()
    }
}
