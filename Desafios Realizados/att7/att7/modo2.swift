//
//  modo2.swift
//  att7
//
//  Created by Turma01-3 on 11/06/24.
//

import SwiftUI

struct modo2: View {
    @State var nome: String = "breno"
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.breno)
                    .ignoresSafeArea()
                
                VStack{
                    
                    VStack{
                        Text("Modo 2")
                            .foregroundStyle(.white)
                            .bold()
                            .font(.system(size:35))
                    }
                    Spacer()
                    
                    VStack{
                        Spacer()
                        TextField("Digite", text: $nome)
                            .multilineTextAlignment(.center)
                        
                        
                        Text("Bem-vindo, \(nome)")
                        
                        Spacer()
                        
                        //stack navigation
                        
                        NavigationLink(destination:modo_2a(name2: nome)){
                            Text("Acessar Tela")
                                .multilineTextAlignment(.center)
                                .padding()
                                .background(
                                    Color(.blue)
                                        .frame(width: 150, height: 35)
                                        .cornerRadius(10)
                                )
                        }
                        Spacer()
                        // .padding(.top, 100)
                        
                    }.background(.pink)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .frame(maxHeight: 250)
                        .padding(50)
                    Spacer()
                    
                }
                
            }
        }
    }
}

#Preview {
    modo2()
}
