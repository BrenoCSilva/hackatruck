//
//  EditaCard.swift
//  remind
//
//  Created by Turma01-1 on 28/06/24.
//

import SwiftUI

struct EditaCard: View {
    @State var card: Card
    @State var nova_pergunta: String = ""
    @State var nova_resposta: String = ""
    @State private var mostrar_alerta = false
    @StateObject var viewModelCard = ViewModelCard()
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundo)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Text("Editar card")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 50)
                        
                    Spacer()
                    Text("Editar pergunta")
                        .lineLimit(1)
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.trailing, 150)
                    
                    TextField(card.pergunta, text: $nova_pergunta)
                        .accentColor(.white)
                        .padding()
                        .background(.pesquisa1)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 10)
                    
                    
                    Text("Editar resposta")
                        .lineLimit(1)
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.top, 50)
                        .padding(.trailing, 150)
                    
                    TextField(card.resposta, text: $nova_resposta)
                        .accentColor(.white)
                        .padding()
                        .background(.pesquisa1)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 10)
                    
                    Spacer()
                    
                    HStack {
                        Button(action : {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("Cancelar")
                                .bold()
                                .frame(width: 100, height: 40)
                                .foregroundColor(.white)
                                .background(.pesquisa1)
                                .cornerRadius(8)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            viewModelCard.put(Card(_id: card._id, _rev: card._rev, nome_Baralho: card.nome_Baralho, pergunta: nova_pergunta, resposta: nova_resposta, status_question: card.status_question))
                            
                            mostrar_alerta = true
                            
                        }) {
                            Text("OK")
                                .bold()
                                .frame(width: 100, height: 40)
                                .foregroundColor(.white)
                                .background(nova_pergunta == card.pergunta && nova_resposta == card.resposta ? Color.gray : .pesquisa1)
                                .cornerRadius(8)
                        }
                        .disabled(nova_pergunta == card.pergunta && nova_resposta == card.resposta)
                    }
                    .padding(.bottom, 30)
                    .padding(.horizontal, 15)
                     
                }
            }
            .alert(isPresented: $mostrar_alerta) {
                Alert (
                    title: Text("Sucesso"),
                    message:  Text("O card foi editado com êxito."),
                    dismissButton: .default(Text("OK")) {
                        presentationMode.wrappedValue.dismiss()
                    }
                )
            }
        }
    }
}

#Preview {
    EditaCard(card: Card(nome_Baralho: "Futebol", pergunta: "Quem é o maior jogador da história?", resposta: "Edson Arantes do Nascimento (Pelé)", status_question: false))
}
