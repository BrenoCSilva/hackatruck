//
//  lista.swift
//  attiv
//
//  Created by Turma01-3 on 11/06/24.
//

import SwiftUI

struct lista: View {
   
    var body: some View {
        
        NavigationStack {
            List {
                
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }

                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette")
                }

                
            }
            .navigationTitle("List")
        }
    }
}

#Preview {
    lista()
}
