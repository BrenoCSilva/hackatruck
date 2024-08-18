//
//  modo3.swift
//  att7
//
//  Created by Turma01-3 on 12/06/24.
//

import SwiftUI

struct modo3: View {
    
    @State private var mostrarSheet = false
    
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
                    Text("Nome: Breno\n Sobrenome: Portgas")
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
    modo3()
}
