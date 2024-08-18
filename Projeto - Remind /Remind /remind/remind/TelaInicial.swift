//
//  ContentView.swift
//  ProjectRemind
//
//  Created by Turma01-6 on 25/06/24.
//

import SwiftUI

struct ContentView: View {
    @Binding var usuario: Usuario?
        
    var body: some View {
        NavigationStack {
        VStack{
                    
                    TabView () {
                        HomeView()
                            
                        .tabItem {
                            Label ("Home", systemImage: "house.fill")
                        }
                        
                        LicoesDiarias()
                        .tabItem {
                            Label ("Lições", systemImage: "book.closed.fill")
                        }
                        
                        Ranking()
                            .tabItem {
                                Label("Ranking", systemImage:"list.number" )
                            }
                        
                        PerfilView(user: usuario)
                            .tabItem {
                                Label("Perfil", systemImage:"person.fill" )
                            }
        
                    }
                    .onAppear() {
                        UITabBarItem.appearance().badgeColor = .systemPink
                        UITabBar.appearance().backgroundColor = .black
                        UITabBar.appearance().unselectedItemTintColor = .systemGray2
                    }
                }
            }.accentColor(.white)
        }
    }


