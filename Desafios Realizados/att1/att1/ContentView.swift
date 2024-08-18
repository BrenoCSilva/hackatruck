//
//  ContentView.swift
//  att1
//
//  Created by Turma01-3 on 17/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
                HStack{
                    Image(systemName: "rectangle")
                        .padding(50.0)
                        .background(.blue)
                        .foregroundColor(.blue)
                    Spacer()
                    Image(systemName: "rectangle")
                        .padding(50.0)
                        .background(.red)
                        .foregroundColor(.red)
                }
                Spacer()
            
                HStack{
                    Image(systemName: "rectangle")
                        .padding(50.0)
                        .background(.yellow)
                        .foregroundColor(.yellow)
            Spacer()

                    Image(systemName: "rectangle")
                        .padding(50.0)
                        .background(.green)
                        .foregroundColor(.green)
                
                }
                
            }
            .padding()
        }
    
}

#Preview {
    ContentView()
}
