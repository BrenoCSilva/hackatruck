//
//  Model.swift
//  att10-pokemon
//
//  Created by Turma01-3 on 17/06/24.
//

import Foundation




struct Pokedex: Decodable, Hashable{
    var sprites : Sprites
    var species : NomeSpecies
   var types: [PokeTypes]
}

struct Sprites: Decodable, Hashable{
   // var name: String?
    var front_default : String
}

struct NomeSpecies: Decodable, Hashable{
    var name: String?

}




struct PokeTypes: Decodable, Hashable{
    var type: PokeType
}
    
struct PokeType: Decodable, Hashable{
    var name: String?
}
        

