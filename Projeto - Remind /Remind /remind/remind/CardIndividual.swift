//
//  Card.swift
//  remind
//
//  Created by Turma01-3 on 26/06/24.
//

import SwiftUI

struct CardIndividual: View {

    @ObservedObject var recebe = globalsheet.compart
    
    //@StateObject var chamarDados = ViewModel()
    @State var card : Card
        
    var body: some View {
        
        ZStack{
            Color(.fundo)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                
                Text(card.pergunta)
                    .foregroundStyle(.white)
                    .foregroundStyle(.white)
                    .font(.system(.title).bold())
                    .padding()
                
                Spacer()
                
                Button("Resposta"){
                    recebe.mostrarsheet = true
                }.sheet(isPresented: $recebe.mostrarsheet){
                    TelaResposta(card2: card)
                }
                .frame(width: 130, height: 50)
                .background(.pesquisa2.opacity(0.5))
                .foregroundStyle(.white)
                .cornerRadius(8.0)
                .padding(.bottom)

            }
//            .onAppear(){
//                chamarDados.dados()
//            }
        }
        
    }
}

#Preview {
    CardIndividual(card: (Card( nome_Baralho: "", pergunta: "", resposta: "", status_question: false)))
}

