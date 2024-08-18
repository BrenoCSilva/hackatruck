//
//  SheetCard.swift
//  remind
//
//  Created by Turma01-1 on 26/06/24.
//

import SwiftUI

struct SheetCard: View {
    @State var nome_baralho: String
    @State private var pergunta_digitada: String = ""
    @State private var resposta_digitada: String = ""
    @State private var mostrar_alerta = false
    @Environment(\.presentationMode) var presentationMode
    @StateObject var viewModelCard = ViewModelCard()

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundo)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Text("Criar card")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 100)
                        
                    Spacer()
                    Text("Pergunta")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.trailing, 230)
                    
                    TextField("Digite uma pergunta:", text: $pergunta_digitada)
                        .accentColor(.white)
                        .padding()
                        .background(.pesquisa1)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 10)
                    
                    
                    Text("Resposta")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.top, 50)
                        .padding(.trailing, 230)
                    
                    TextField("Digite uma resposta:", text: $resposta_digitada)
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
                            viewModelCard.post(Card(_id: nil, _rev: nil, nome_Baralho: nome_baralho, pergunta: pergunta_digitada, resposta: resposta_digitada, status_question: false))
                            
                            mostrar_alerta = true
                            
                        }) {
                            Text("OK")
                                .bold()
                                .frame(width: 100, height: 40)
                                .foregroundColor(.white)
                                .background(pergunta_digitada.isEmpty || resposta_digitada.isEmpty ? Color.gray : .pesquisa1)
                                .cornerRadius(8)
                        }
                        .disabled(pergunta_digitada.isEmpty || resposta_digitada.isEmpty)
                    }
                    .padding(.bottom, 30)
                    .padding(.horizontal, 15)
                     
                }
            }
            .alert(isPresented: $mostrar_alerta) {
                Alert (
                    title: Text("Sucesso"),
                    message:  Text("O card foi criado com êxito."),
                    dismissButton: .default(Text("OK")) {
                        presentationMode.wrappedValue.dismiss()
                    }
                )
            }
        }
    }
}

#Preview {
    SheetCard(nome_baralho: "")
}

