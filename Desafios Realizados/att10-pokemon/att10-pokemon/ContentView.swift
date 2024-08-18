//
//  ContentView.swift
//  att10-pokemon
//
//  Created by Turma01-3 on 17/06/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var teste = ViewModel()
    
    @State var pokemonId: Int = 1
    
    var body: some View {
        
        VStack {
            ScrollView{
                ForEach(teste.personagens, id: \.self) { index in
                    
                    Text(index.species.name!)
                    
                    
                    
                    AsyncImage(url: URL(string: index.sprites.front_default)){ image in
                        image
                            .resizable()
                            .frame(width:100, height:100,  alignment: .center)
                        
                    }placeholder: {
                        ProgressView()
                    }
                    Spacer()
                    ForEach(index.types, id: \.self) { t in
                        Spacer()
                        Text((t.type.name)!)
//                            .resizable()
//                            .frame(width: 30, height: 30)
                    }
                }.onAppear(){
                    teste.fetch(pokeId: pokemonId)
                }
            }
        }
        HStack{
            Spacer()
            Image(systemName: "arrowshape.backward.fill")
                .resizable()
                .frame(width: 60, height: 60)
                .foregroundColor(.blue)
                .onTapGesture {
                    if(pokemonId != 1){
                        pokemonId -= 1
                    } else {
                        pokemonId = 10277
                    }
                    teste.fetch(pokeId: pokemonId)
                }
            Spacer()
            Image(systemName: "arrowshape.forward.fill")
                .resizable()
                .frame(width: 60, height: 60)
                .foregroundColor(.blue)
                .onTapGesture {
                    if(pokemonId != 10277){
                        pokemonId += 1
                    } else {
                        pokemonId = 1
                    }
                    teste.fetch(pokeId: pokemonId)
                }
            Spacer()
        }
        
        
    }
}

#Preview {
    ContentView()
}
