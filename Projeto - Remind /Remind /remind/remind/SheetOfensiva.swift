//
//  SheetOfensiva.swift
//  remind
//
//  Created by Turma01-1 on 01/07/24.
//

import SwiftUI

struct SheetOfensiva: View {
    @State var user: Usuario
    let conquistas = [
        Conquista(nome: "Bronze", cor: .brown, pontosNecessarios: 15),
        Conquista(nome: "Prata", cor: .gray, pontosNecessarios: 30),
        Conquista(nome: "Ouro", cor: .yellow, pontosNecessarios: 60),
        Conquista(nome: "Platina", cor: .blue, pontosNecessarios: 90),
        Conquista(nome: "Esmeralda", cor: .green, pontosNecessarios: 180),
        Conquista(nome: "Diamante", cor: .cyan, pontosNecessarios: 365),
        Conquista(nome: "Mestre", cor: .purple, pontosNecessarios: 730),
        Conquista(nome: "Desafiante", cor: .black, pontosNecessarios: 1460)
    ]
    var body: some View {
        ZStack {
            Color(.fundo)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

                    VStack() {
                        
                        
                        VStack {
                            
                            Image(.fogo)
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                            Text("200")
                                .font(.title)
                                .foregroundColor(.white)
                                .bold()
                            
                            Text("Dias sem descanso")
                                .foregroundColor(.white)
                        }
                        .padding(.top, 100)
                        
                        ScrollView {
                            
                            ForEach(conquistas, id: \.self) { conquista in
                                HStack {
                                    Text("\(conquista.pontosNecessarios)")
                                        .font(.title3)
                                        .foregroundColor(200 >= conquista.pontosNecessarios ? .white : .gray)
                                        .bold()
                                    
                                    Spacer()
                                    
                                    Text(conquista.nome)
                                        .font(.title3)
                                        .foregroundColor(200 >= conquista.pontosNecessarios ? .white : .gray)
                                        .bold()
                                    
                                    Spacer()
                                    
                                    Image(systemName: "shield.fill")
                                        .resizable()
                                        .frame(width: 30, height: 35)
                                        .foregroundColor(conquista.cor)
                                        .opacity(200 >= conquista.pontosNecessarios ? 1 : 0.4)
                                        .shadow(radius: 10)
                                }
                                .padding()
                            }
                        }
                        
                    }
        }
    }
}

#Preview {
    SheetOfensiva(user: Usuario( nome_usuario: "Alvim019", senha: "teste", pontuacao: 215,ImagemUrl: "https://img.a.transfermarkt.technology/portrait/big/68290-1697056482.png?lm=1")
)
}
