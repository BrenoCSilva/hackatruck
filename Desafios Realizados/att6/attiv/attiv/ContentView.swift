//
//  ContentView.swift
//  attiv
//
//  Created by Turma01-3 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            rosa()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush")
                }
            
            azul()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed.fill")

                }
            
            cinza()
                .tabItem {
                    Label("Cinza", systemImage:  "paintpalette.fill")
                }
            
            lista()
                .tabItem {
                    Label("Lista", systemImage:  "list.bullet")
                }  
        }
    }
}

#Preview {
    ContentView()
}
