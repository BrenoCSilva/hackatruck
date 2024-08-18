//
//  ContentView.swift
//  att3
//
//  Created by Turma01-3 on 17/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack{
            HStack(spacing : 12){
                
                VStack {
                    Circle()
                        .frame(width: 100)
                }
                VStack{
                    HStack{
                        
                        
                        
                        VStack{
                            Text("8")
                            Text("Posts")
                            
                        }
                        
                        
                        VStack{
                            
                            Text("12K")
                            Text("Seguidores")
                            
                        }
                        
                        VStack{
                            
                            Text("2K")
                            Text("Seguindo")
                        }
                        
                    }
                    .frame(height: 55)
                    HStack(){
                        Text("Editar Perfil")
                            .bold()
                            .frame(width: 200)
                            .frame(alignment: .center)
                            .background(.gray)
                            .cornerRadius(10)
                        
                        
                    }
                    
                }
            }
            
            VStack{
                
                HStack{
                    Text("Nome Sobrenome")
                        .offset(x:-70, y:10)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    
                }
                
                HStack{
                    Text("descricao qualquer ")
                        .offset(x:-93, y:10)
                    
                    
                }
                
            }
            
            VStack{
                
                VStack{
                    HStack{
                        Rectangle()
                            .frame(width: 24, height: 24)
                            .position(x:40, y: 40)
                        
                        Rectangle()
                            .frame(width: 55, height: 24)
                            .position(x:-15, y: 40)
                        Rectangle()
                            .frame(width: 24, height: 24)
                        // .position(x:40, y: 40)
                            .offset(x:123, y:24)
                    }
                   
                }
                
                HStack{
                 Rectangle()
                 .frame(width: 120, height: 120)
                 .position(x: 65)
                 
                 Rectangle()
                 .frame(width: 120, height: 120)
                 .position(x: 60)
                 
                 
                 Rectangle()
                 .frame(width:120, height: 120)
                 .position(x: 55)
                 
                 }
                 
                 HStack{
                 Rectangle()
                 .frame(width: 120, height: 120)
                 .position(x: 65)
                 
                 Rectangle()
                 .frame(width: 120, height: 120)
                 .position(x: 60)
                 
                 
                 Rectangle()
                 .frame(width:120, height: 120)
                 .position(x: 55)
                 
                 }
                
                
                
                
                
            }
            
            
        }
        
        Spacer()
        
        
    }
    
}

#Preview {
    ContentView()
}
