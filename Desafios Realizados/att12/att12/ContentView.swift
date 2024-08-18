//
//  ContentView.swift
//  att12
//
//  Created by Turma01-3 on 19/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var teste = ViewModel()
    @State var mostrarSheet = false
    @State var laranja : descricao = descricao()
    
    var body: some View {
        VStack{
            
            List{
                ForEach(teste.descricoes, id:\.self){index in
                    ForEach(index.data, id:\.self){ a in
                        HStack{
                            Text(a.campeao!)
                            Spacer()
                            Text("\(a.ano!)")
                            
                            Text(a.estado!)
                            
                            VStack{
                                Button{
                                    laranja = a
                                    mostrarSheet = true
                                }label: {
                                    
                                    Image(systemName: "signpost.right.circle.fill")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                    
                                    
                                }
                            }
                        }
                        
                    }
                }
            }
            
            

        }.sheet(isPresented: $mostrarSheet) {
            SwiftUIView(laranja: $laranja)
            
        }
        .onAppear(){
      
            teste.fetch()
        }
    }
}

#Preview {
    ContentView()
}
