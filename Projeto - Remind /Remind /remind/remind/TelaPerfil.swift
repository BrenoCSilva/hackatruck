//
//  ProfileView.swift
//  ProjectRemind
//
//  Created by Turma01-6 on 24/06/24.
//

import SwiftUI


struct PerfilView: View {
//    @State private var user: Usuario = Usuario( nome_usuario: "Alvim019", senha: "teste", pontuacao: 215, ImagemUrl: "https://img.a.transfermarkt.technology/portrait/big/68290-1697056482.png?lm=1")
    
    @State var user: Usuario?
    @State private var mostrar_sheet = false
    
    var body: some View {
        ZStack {
            Color(.fundo)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack {
                    if let url = URL(string: user!.ImagemUrl) {
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .background(.white)
                                .clipShape(Circle())
                        } placeholder: {
                            ProgressView()
                                .frame(width: 150, height: 150)
                        }
                    }
                    
                    Text(user!.nome_usuario)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                    
                    HStack {
                        Image("trofeu")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                        
                        Spacer()
                        
                        Text("\(user!.pontuacao)")
                            .font(.title2)
                            .foregroundColor(.white)
                            .bold()
                        
                        Spacer()
                    }
                    .frame(width: 120, height: 80)
                    .background(.pesquisa2.opacity(0.5))
                    .cornerRadius(10)
                }
                Spacer()
                
                ScrollView() {
                    
                    VStack() {
                        Text("Conquistas")
                            .font(.title)
                            .foregroundColor(.white)
                            .bold()
                        
                        HStack {
                            VStack {
                                Image("errar_eh_humano")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .aspectRatio(contentMode: .fit)
                                
                                Text("Errar é humano")
                                    .font(.system(size: 10))
                                    .foregroundColor(.white)
                                    .bold()
                                    .multilineTextAlignment(.center)
                            }
                            .frame(width: 110, height: 110)
                            .background(.pesquisa2.opacity(0.5))
                            .cornerRadius(10)
                            
                            Spacer()
                            
                            VStack {
                                Image("20_cards_aprendidos")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .aspectRatio(contentMode: .fit)
                                
                                Text("20 cards aprendidos")
                                    .font(.system(size: 10))
                                    .foregroundColor(.white)
                                    .bold()
                                    .multilineTextAlignment(.center)
                            }
                            .frame(width: 110, height: 110)
                            .background(.pesquisa2.opacity(0.5))
                            .cornerRadius(10)
                            
                            Spacer()
                            
                            VStack {
                                Image("100_respostas")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .aspectRatio(contentMode: .fit)
                                
                                Text("Ter 100 respostas boas")
                                    .multilineTextAlignment(.center)
                                    .font(.system(size: 10))
                                    .foregroundColor(.white)
                                    .bold()
                            }
                            .frame(width: 110, height: 110)
                            .background(.pesquisa2.opacity(0.5))
                            .cornerRadius(10)
                            
                            Spacer()
                        }
                        .padding(.horizontal, 20)
                        Spacer()
                        
                        HStack {
                            VStack {
                                Image("amizade_bela")
                                    .resizable()
                                    .frame(width: 65, height: 80)
                                    .aspectRatio(contentMode: .fit)
                                
                                Text("A amizade é bela")
                                    .font(.system(size: 10))
                                    .foregroundColor(.white)
                                    .bold()
                                    .multilineTextAlignment(.center)
                            }
                            .frame(width: 110, height: 110)
                            .background(.pesquisa2.opacity(0.5))
                            .cornerRadius(10)
                            
                            Spacer()
                            
                            VStack {
                                Image("acumulo_xp")
                                    .resizable()
                                    .frame(width: 80, height: 65)
                                    .aspectRatio(contentMode: .fit)
                                
                                Text("Acúmulo de experiência")
                                    .font(.system(size: 10))
                                    .foregroundColor(.white)
                                    .bold()
                                    .multilineTextAlignment(.center)
                            }
                            .frame(width: 110, height: 110)
                            .background(.pesquisa2.opacity(0.5))
                            .cornerRadius(10)
                            
                            Spacer()
                            
                            VStack {
                                Button (action : {
                                    mostrar_sheet = true
                                }) {
                                    VStack {
                                        Image("pegando_fogo")
                                            .resizable()
                                            .frame(width: 80, height: 80)
                                            .aspectRatio(contentMode: .fit)
                                        
                                        Text("Pegando fogo")
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 10))
                                            .foregroundColor(.white)
                                            .bold()
                                    }
                                }
                                .sheet(isPresented: $mostrar_sheet) {
                                    SheetOfensiva(user: user!)
                                }
                            }
                            .frame(width: 110, height: 110)
                            .background(.pesquisa2.opacity(0.5))
                            .cornerRadius(10)
                            
                            Spacer()
                        }
                        .padding(.horizontal, 20)
                        Spacer()
                        
                    }
                }
                Rectangle()
                    .ignoresSafeArea()
                    .frame(width: .infinity, height: 5)}
            
        }
    }
}

#Preview {
    PerfilView()
}

