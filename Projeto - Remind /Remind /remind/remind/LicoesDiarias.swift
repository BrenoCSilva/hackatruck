//
//  LicoesDiarias.swift
//  remind
//
//  Created by Turma01-10 on 27/06/24.
//

import SwiftUI

struct LicoesDiarias: View {

    @StateObject var recebe = ViewModelCard()
    @ObservedObject var aux = globalsheet.compart
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color(.fundo)
                    .edgesIgnoringSafeArea(.all)
                  //  .edgesIgnoringSafeArea(.top)
                //ScrollView{
                VStack{
                    ScrollView{
                        ForEach(recebe.carregarCard.prefix(5), id: \.self){ atual in
                            
                            NavigationLink(destination: CardIndividual(card: atual)){
                                
                                HStack{
                                    Text(atual.pergunta)
                                        .foregroundColor(.white)
                                        .frame(width: 280, height: 100)
                                        .background(.pesquisa2.opacity(0.5))
                                        .cornerRadius(10)
                                        .foregroundColor(.white)
                                        .padding()
                                    if atual.status_question == false{
                                        Image(systemName: "exclamationmark")
                                            .resizable()
                                            .foregroundColor(.red)
                                            .frame(width: 10, height: 70)
                                    }else{
                                        Image(systemName: "checkmark")
                                            .resizable()
                                            .foregroundColor(.green)
                                            .frame(width: 30, height: 30)
                                    }
                               }
                          }
                            
                       }
                    }
        Spacer()
                    Rectangle()
                        .ignoresSafeArea()
                        .frame(width: .infinity, height: 5)
                       
                    }
                }
        }.onAppear(){
            recebe.dadosCard()
            
    }
    }
}

#Preview {
    LicoesDiarias()
}


