//
//  ContentView.swift
//  att4
//
//  Created by Turma01-3 on 17/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var texto = "breno"
    var body: some View {
        ZStack {
            
            Image(.fundo)
                .resizable()
                .scaledToFill()
                .opacity(0.2)
                .ignoresSafeArea()

            .blur(radius: 2)
            
            VStack{
                
                VStack{
                    

                    TextField("Digite aqui brother", text: $texto)
                        .multilineTextAlignment(.center)
                        .offset(y:-120)
                    
                    
                    Text("Bem vindo, \(texto)")
                        .offset(y:-200)
                        .bold()
                    
                }

                
                VStack{
                    
                    Text("Entrar")
                        .offset(y:280)
                        .bold()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                }
                
               VStack{
                    Image(.logo)
                        .resizable()
                        .frame(width: 200, height: 100)
                        .offset(y:5)
                }
                
                VStack{
                    Image(.truck)
                        .resizable()
                        //.offset(y:110)
                        .frame(width: 200, height: 100)
                        .scaledToFill()
                    
                }
                
                
                
            }
        }
        
    }
}


#Preview {
    ContentView()
}
