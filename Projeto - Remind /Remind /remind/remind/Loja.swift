//
//  Loja.swift
//  remind
//
//  Created by Turma01-3 on 01/07/24.
//

import SwiftUI

struct Loja: View {
    var body: some View {
        
        ZStack{
        Color(.fundo)
            .ignoresSafeArea()
            VStack{
                HStack{
                    
                    HStack{
                        Image(.fogo)
                            .resizable()
                            .frame(width:50 , height: 50)
                        
                        Text("200")
                            .foregroundStyle(.white)
                            .bold()
                    }
                
                    HStack{
                        Image(.gelo)
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("5")
                            .foregroundStyle(.white)
                            .bold()
                    }
                    .padding()
                    
                    
                    HStack{
                        Image(.coin)
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("200")
                            .foregroundStyle(.white)
                            .bold()
                    }
                }
                
                Group{ // bloqueio
                    
                    HStack(){
                       
                        HStack{
                            Image(.gelo)
                                .resizable()
                                .frame(width: 75, height: 75)
                            
                            Text("     bloqueio \n          de  \n     ofensiva")
                                .foregroundStyle(.white)
                                .bold()
                                .padding()
                        }
                        Spacer()
                        VStack{
                            Image(.coin)
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                            Text("10")
                                .foregroundStyle(.white)
                                .bold()
                            
                        }
                        .frame(width: 75, height: 75)
                        .background(.pesquisa1)
                        .cornerRadius(15)
                        
                        
                    }
                    .padding()
                }
                .padding()
                
                Group{ // recovery
                    HStack(){
                        
                        HStack{
                            Image(.recovery)
                                .resizable()
                                .frame(width: 70, height: 75)
                            
                                   
                          
                            Text("Recuperação \n         de  \n   ofensiva")
                                .foregroundStyle(.white)
                                .bold()
                                .padding()
                            
                        }
                        
                        VStack{
                            Image(.coin)
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                            Text("200")
                                .foregroundStyle(.white)
                                .bold()
                                
                            
                        }
                        .frame(width: 75, height: 75)
                        .background(.pesquisa1)
                        .cornerRadius(15)
                        
                    }
                    
                }
                Spacer()
                
                Group{ // comprar sinapses
                    HStack{
                        
                        Spacer()
                        
                        VStack{
                            Image(.coin)
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                            Text(" 15  sinapses \n    R$ 7,50  ")
                                .foregroundStyle(.white)
                                .bold()
                                .font(.system(size: 16))
                            
                        }
                        .frame(width: 100, height: 100)
                        .background(.pesquisa1)
                        .cornerRadius(15)
                        
                        Spacer()
                        
                        VStack{
                            Image(.coin)
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                            Text(" 50  sinapses \n    R$ 15,00  ")
                                .foregroundStyle(.white)
                                .bold()
                                .font(.system(size: 16))
                            
                            
                        }
                        .frame(width: 100, height: 100)
                        .background(.pesquisa1)
                        .cornerRadius(15)
                        
                        Spacer()
                    
                        
                        VStack{
                            Image(.coin)
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                            Text("100 sinapses \n    R$ 25,00  ")
                                .foregroundStyle(.white)
                                .bold()
                                .font(.system(size: 16))
                            
                            
                        }
                        .frame(width: 100, height: 100)
                        .background(.pesquisa1)
                        .cornerRadius(15)
                        
                        Spacer()
                    }
                    
                    Spacer()
                }
                
            }
    }
        
    }
}

#Preview {
    Loja()
}
