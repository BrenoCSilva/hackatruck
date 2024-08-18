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
    @State var pokemonType: String = "normal" // Tipo padrão inicial
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [colorForType(pokemonType).first!, colorForType(pokemonType).last!]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                VStack {
                    
                    // ScrollView{
                    ForEach(teste.personagens, id: \.self) { index in
                        Spacer()
                        Text(index.species.name!)
                        
                        
                        
                        AsyncImage(url: URL(string: index.sprites.front_default)){ image in
                            image
                                .resizable()
                                .frame(width:100, height:100,  alignment: .center)
                            
                        }placeholder: {
                            ProgressView()
                        }
                        
                        ForEach(index.types, id: \.self) { t in
                            Text((t.type.name)!)
                                .onAppear {
                                    // Atualiza pokemonType para o tipo atual do Pokémon
                                    pokemonType = t.type.name ?? "normal"
                                }
                        }
                    }.onAppear(){
                        teste.fetch(pokeId: pokemonId)
                    }
                    Spacer()
                    
                    //}
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
        
    }
}



func colorForType(_ type: String) -> [Color] {
    switch type.lowercased() {
    case "grass":
        return [.white, .green]
    case "fire":
        return [.red, .orange]
    case "water":
        return [.white, .blue]
    case "electric":
        return [.white, .yellow]
    case "psychic":
        return [.white, .purple]
    case "bug":
        return [.white, .green.opacity(0.5)]
    case "poison":
        return [.white, .purple]
        // Adicione mais tipos conforme necessário
    default:
    return [.white, .gray]
    }
}

#Preview {
    ContentView()
}
