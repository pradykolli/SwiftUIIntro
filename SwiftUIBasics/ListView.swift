//
//  ListView.swift
//  demo
//
//  Created by pradeep Kolli on 11/1/19.
//  Copyright © 2019 pradeep Kolli. All rights reserved.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var names: NamesArray
    
    var body: some View {
        List(names.names, id: \.self){
            name in Text("\(name)")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(names)
    }
}
