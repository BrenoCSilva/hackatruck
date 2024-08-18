//
//  HomeView.swift
//  ProjectRemind
//
//  Created by Turma01-6 on 24/06/24.
//

import SwiftUI

struct HomeView: View {
    @State private var busca : String = ""
    @State var mostrar_cria_baralho = false
    @State var mostrar_edita_baralho = false
    @State private var mostrar_alerta = false
    @State private var baralho_para_excluir: Baralho?
    @StateObject var consumirBaralho = ViewModelBaralho()
    @StateObject var consumirCard = ViewModelCard()
     
    var filter :[Baralho] {
        if busca.isEmpty {
            return consumirBaralho.carregarBaralho
        } else {
            return consumirBaralho.carregarBaralho.filter {
                $0.nome.localizedCaseInsensitiveContains(busca)
            }
        }
    }
    
    var body: some View {
    
        NavigationStack {
            
            ZStack {
                Color(.fundo)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    HStack() {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                            .padding(10)
                        
                        ZStack {
                            if busca.isEmpty {
                                Text("Procure um baralho")
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(.trailing, 50)
                                
                            }
                            TextField("", text: $busca)
                                .accentColor(.white)
                                .foregroundColor(.white)
                        }
                    }
                    .frame(width: 280, height: 40)
                    .background((LinearGradient(gradient: Gradient(colors: [.pesquisa1, .pesquisa2, .pesquisa1]), startPoint: .top, endPoint: .bottom)))
                    .cornerRadius(10)
                    .padding(.bottom, 40)
                    .padding(.top, 20)
                    
                    VStack (alignment: .leading) {
                        ScrollView (showsIndicators: false){
                            ForEach(filter , id: \.self) { baralho in
                                
                                NavigationLink(destination: BaralhoIndividual(baralho_atual: baralho.nome)){
                                    
                                    HStack {
                                        
                                        Text ("\(baralho.nome)")
                                            .font(.title2.bold())
                                            .foregroundColor(.white)
                                            .shadow(radius: 10)
                                        
                                        Spacer()
                                        
                                        NavigationLink(destination: EditaBaralhoView(baralho: baralho)){
                                            Image(systemName: "pencil.circle.fill")
                                                .resizable()
                                                .frame(width: 25, height: 25)
                                                .padding(.trailing, 5)
                                                .shadow(radius: 10)
                                        }
                                        
                                        Button (action: {
                                            baralho_para_excluir = baralho
                                            mostrar_alerta = true
                                        }) {
                                            Image(systemName: "trash.fill")
                                                .resizable()
                                                .frame(width: 25, height: 25)
                                                .padding(.trailing, 5)
                                                .shadow(radius: 10)
                                        }
                                    }
                                    .padding()
                                    .background(.pesquisa1.opacity(0.3))
                                    .frame(width: 350)
                                }
                            }
                        }
                    }

                    
                    Spacer()
                    
                    VStack (alignment: .trailing) {
                        HStack {
                            Spacer()
                            Button {
                                mostrar_cria_baralho = true
                            } label: {
                                Image(systemName: "plus.app.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.pesquisa1)
                                    .shadow(radius: 20)
                                    .cornerRadius(100)
                            }
                            .sheet(isPresented: $mostrar_cria_baralho) {
                                consumirBaralho.dadosBaralho()
                            } content: {
                                CriaBaralhoView()
                            }
                        }
                        .padding()
                    }
                }.onAppear(){
                    consumirBaralho.dadosBaralho()
                }
            } .alert(isPresented: $mostrar_alerta) {
                Alert (
                    title: Text("ATENÇÃO"),
                    message:  Text("Tem certeza que deseja excluir o baralho."),
                    primaryButton: .destructive(Text("Excluir")) {
                        consumirBaralho.delete(baralho_para_excluir!)
                    },
                    secondaryButton: .cancel(Text("Cancelar"))
                )
            }
        }.accentColor(.white)
    }
}

#Preview {
    HomeView()
}

