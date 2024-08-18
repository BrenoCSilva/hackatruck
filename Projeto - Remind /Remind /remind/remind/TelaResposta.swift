
//  TelaResposta.swift
//  remind
//
//  Created by Turma01-10 on 26/06/24.
//

import SwiftUI

struct TelaResposta: View {
    @StateObject var status = ViewModelCard()
    @ObservedObject var recebe = globalsheet.compart
    @State var card2 : Card
    
    var body: some View {
        ZStack{
            Color(.fundo)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                
                Text(card2.resposta)
                    .foregroundStyle(.white)
                    .font(.system(.title).bold())
                    .padding()
                
                Spacer()
                
                HStack(spacing: 15.0) {
                    Button("1 hora \n Errei") {
                        recebe.mostrarsheet = false
                        status.put(Card(_id: card2._id, _rev: card2._rev, nome_Baralho:card2.nome_Baralho, pergunta: card2.pergunta, resposta: card2.resposta, status_question: true))
                    }
                    .frame(width: 80, height: 50)
                    .background(.red)
                    .foregroundStyle(.white)
                    .cornerRadius(8.0)
                    
                    Button("1 dia \n Dificil") {
                        recebe.mostrarsheet = false
                        status.put(Card(_id: card2._id, _rev: card2._rev, nome_Baralho:card2.nome_Baralho, pergunta: card2.pergunta, resposta: card2.resposta, status_question: true))
                    }
                    .frame(width: 80, height: 50)
                    .background(.yellow)
                    .foregroundStyle(.white)
                    .cornerRadius(8.0)
                    
                    Button("2 dias \n Bom") {
                        recebe.mostrarsheet = false
                        status.put(Card(_id: card2._id, _rev: card2._rev, nome_Baralho:card2.nome_Baralho, pergunta: card2.pergunta, resposta: card2.resposta, status_question: true))
                    }
                    .frame(width: 80, height: 50)
                    .background(.green.opacity(0.8))
                    .foregroundStyle(.white)
                    .cornerRadius(8.0)
                    
                    Button("3 dias \n otimo") {
                        recebe.mostrarsheet = false
                        status.put(Card(_id: card2._id, _rev: card2._rev, nome_Baralho:card2.nome_Baralho, pergunta: card2.pergunta, resposta: card2.resposta, status_question: true))
                    }
                    .frame(width:80, height: 50)
                    .background(.green)
                    .foregroundStyle(.white)
                    .cornerRadius(8.0)
                }
                .padding(.bottom, 30)
            }
        }
    }
}

#Preview {
    TelaResposta(card2: (Card(nome_Baralho: "", pergunta: "", resposta: "marquinhos", status_question: false)))
}
