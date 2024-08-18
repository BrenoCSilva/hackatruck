//
//  LicoesDiarias.swift
//  remind
//
//  Created by Turma01-3 on 26/06/24.
//

//Alteração no filtro de cards e no ForEach!!!!

import SwiftUI

struct BaralhoIndividual: View {
    @State private var mostrar_alerta = false
    @State private var busca: String = ""
    @State var baralho_atual: String
    @State private var mostrar_sheet = false
    @StateObject var consumirCard = ViewModelCard()
    @State private var card_excluir: Card?

    var filtro_de_cards: [Card] {
        return consumirCard.carregarCard.filter { card in
            card.nome_Baralho == baralho_atual && (busca.isEmpty || card.pergunta.localizedCaseInsensitiveContains(busca))
        }
    }
   
   
    var body: some View {
        NavigationStack() {
            ZStack {
                Color(.fundo)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack() {
                        Image(systemName:"magnifyingglass")
                        .foregroundColor(.white)
                       
                        ZStack {
                            if busca.isEmpty {
                                Text("Procure um card")
                                    .foregroundColor(.white)
                                    .padding(.trailing, 30)
                               
                            }
                            TextField("", text: $busca)
                                .foregroundColor(.white)
                        }
                    }
                    .frame(width: 280, height: 30)
                    .background((LinearGradient(gradient: Gradient(colors: [.pesquisa1, .pesquisa2, .pesquisa1]), startPoint: .top, endPoint: .bottom)))
                    .cornerRadius(10)
                   
                    .padding(.bottom, 80)
                   
                    ScrollView(showsIndicators: false) {
                       
                        ForEach(filtro_de_cards, id: \.self) { card_atual in
                            HStack(alignment: .center) {
                                NavigationLink(destination: CardIndividual(card: card_atual)) {
                                        Text(card_atual.pergunta)
                                            .bold()
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.leading)
                                            .padding(.leading, 15)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                       
                                Spacer()
                               
                                NavigationLink(destination: EditaCard(card: card_atual, nova_pergunta: card_atual.pergunta, nova_resposta: card_atual.resposta)) {
                                    Image(systemName: "pencil.circle.fill")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .padding(.trailing, 15)
                                   
                                    Button (action: {
                                        mostrar_alerta = true
                                        card_excluir = card_atual
                                    }) {
                                        Image(systemName: "trash.fill")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .padding(.trailing, 15)
                                    }
                                }
                            }
                            .frame(width: 300, height: 100)
                            .background(.pesquisa2.opacity(0.5))
                            .cornerRadius(10)
                            .padding(.bottom, 20)
                        }
                    }
                    HStack {
                        Spacer()
                       
                        Button {
                            mostrar_sheet = true
                        } label: {
                            Image(systemName: "plus.app.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.pesquisa1)
                                .cornerRadius(100)
                           
                        }
                        .sheet(isPresented: $mostrar_sheet) {
                            consumirCard.dadosCard()
                        } content:{
                            SheetCard(nome_baralho: baralho_atual)
                        }
                    }
                    .padding()
                }
                .onAppear(){
                    consumirCard.dadosCard()
                }
            }
            .alert(isPresented: $mostrar_alerta) {
                Alert (
                    title: Text("Excluir"),
                    message: Text("Tem certeza deseja excluir?"),
                    primaryButton: .destructive(Text("Excluir")) {
                        consumirCard.delete(Card(_id: card_excluir!._id, _rev: card_excluir!._rev, nome_Baralho: card_excluir!.nome_Baralho, pergunta: card_excluir!.pergunta, resposta: card_excluir!.resposta, status_question: card_excluir!.status_question))
                    },
                    secondaryButton: .cancel(Text("Cancelar"))
                )
            }
        }
        .accentColor(.white)
    }
}

#Preview {
    BaralhoIndividual( baralho_atual: "")
}
