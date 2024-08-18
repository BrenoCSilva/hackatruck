//
//  ContentView.swift
//  att7
//
//  Created by Turma01-3 on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var mostrarSheet = false
    
    var body: some View {
        
            
    
            
            NavigationStack{
                ZStack{
                    Color(.breno)
                        .ignoresSafeArea()
                    

                    VStack{
                        Image(.logo)
                            .resizable()
                            .frame(width: 250, height: 200)
                            .padding(.top, -200)
                        
                        NavigationLink(destination:modo1()){
                            VStack{
                                Text("modo1")
                                    .background(.pink)
                                    .frame(width: 200, height: 80)
                                
                            }
                            .background(.pink)
                            .cornerRadius(10)
                            
                        }
                        .padding()
                        
                        
                        NavigationLink(destination:modo2()){
                            
                            VStack{
                                Text("modo2")
                                    .background(.pink)
                                    .frame(width: 200, height: 80)
                            }
                            .background(.pink)
                            .cornerRadius(10)
                        }
                        
                        Button("Mostrar view"){

                            mostrarSheet = true

                        }.sheet(isPresented: $mostrarSheet){
                            
                            modo3()
                           /*NavigationStack{
                                VStack {
                                    
                                    NavigationLink(destination:modo3()){
                                        Text("teste")
                                    }
                                    .padding()
                                }
                            }
                            */
                            

                    }
                    .background(.pink)
                    .frame(width: 200, height: 10)
                     


                   
                       /* NavigationLink(destination:modo3()){
                            VStack{
                                Text("modo1")
                                    .background(.pink)
                                    .frame(width: 200, height: 80)
                            }
                            .background(.pink)
                            .cornerRadius(10)
                        }
                        .padding()
                        */
                    }
                    
                }
            }
    }
}

#Preview {
    ContentView()
}
