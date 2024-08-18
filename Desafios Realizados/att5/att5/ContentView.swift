//
//  ContentView.swift
//  att5
//
//  Created by Turma01-3 on 10/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var altura: Float = 0
    @State var peso:Float  = 0.0
    @State var calcular: Float = 0.0
    @State var str:String = "IMC"
    @State var cor:String = "normalidade"
    
        var body: some View {
       
        
        ZStack{
            
            
            Color(str)
            
            
        VStack{
                
                VStack{
                    Text("Calculadora de IMC")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    
        }
        Spacer()
                
            Rectangle()
            .fill(.white)
            .frame(width: 300, height: 40)
            .cornerRadius(5)
            .padding(.top, 15)
                    
            Rectangle()
                .fill(.white)
                .frame(width: 300, height: 40)
                .cornerRadius(5)
                .padding(.top, 15)
                    
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 40)
                .cornerRadius(5)
                .padding()
                    
                VStack{
                    TextField("Digite seu peso", value: $peso, formatter: NumberFormatter())
                        .cornerRadius(10)
                        .multilineTextAlignment(.center)
                        .padding(.top, -180)

                }
                                
                VStack{
                    TextField("Digite sua altura", value: $altura, formatter: NumberFormatter())                
                        .cornerRadius(10)
                        .multilineTextAlignment(.center)
                        .padding(.top, -128)

                }
                Spacer()
                
                    
                VStack{
                    Button("Calcular") {
                       calcular = peso / (altura * altura)
                        
                        if (calcular <= 18.5) {
                                str = "BAIXO PESO"
                               
                       
                        } else if( calcular > 18.5 && calcular <= 24.99){
                            str = "NORMAL"

                        }else if (calcular > 24.99 && calcular <= 29.99){
                            str = "SOBREPESO"
                            
                        }else{
                            str = "OBESIDADE"
                            
                                
                        }
                
                       
                    }
                    .padding(.top, -70)
                    .foregroundColor(.white)
                    Spacer()
                

                }
                Spacer()
                
                
                VStack{
                
                    Text(str)
                                            
                }
                .foregroundColor(.white)
                .padding(.bottom, 125)
               
                
                VStack{
                    Image(.tabelaIMC)
                        .resizable()                 
                        .frame(width: 400, height: 200)
                }
                
                
            }
              
                
            }
            
        }
    }

#Preview {
    ContentView()
}
