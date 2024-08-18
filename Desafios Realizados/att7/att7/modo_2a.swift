//
//  modo2.1.swift
//  att7
//
//  Created by Turma01-3 on 11/06/24.
//

import SwiftUI

struct modo_2a: View {
    
    @State var name2: String = "breno"
    
    var body: some View {
        ZStack{
            Color(.breno)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                VStack{
                    Text("Modo 1")
                        .foregroundStyle(.white)
                }
                Spacer()
              
                
                VStack{
                    Text("Volte, \(name2)")
                        .multilineTextAlignment(.center)
                        .background(
                            ZStack{
                                Color(.pink)
                                    .frame(width: 200, height: 150)
                                    .cornerRadius(10)
                            })
                }
                .foregroundColor(.white)
                .bold()
                Spacer()
                   
            }
        }
    }
}

#Preview {
    modo_2a()
}
