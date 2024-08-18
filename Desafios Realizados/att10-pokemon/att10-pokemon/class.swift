//
//  class.swift
//  att10-pokemon
//
//  Created by Turma01-3 on 17/06/24.
//

import Foundation


class ViewModel: ObservableObject{
    
    @Published var personagens : [Pokedex] = []
    
    func fetch (pokeId : Int){
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(pokeId)") else{
            return
        }
        let task = URLSession.shared.dataTask(with:url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let jsonDecodificado = try JSONDecoder().decode(Pokedex.self, from:data)
                
                DispatchQueue.main.async{
                    
                    self!.personagens.removeAll()
                    self?.personagens.append(jsonDecodificado)
                }
            }catch{
                print(error)
            }
            
        } //decodifica dados
        task.resume()
    }
}
