//
//  class.swift
//  att10
//
//  Created by Turma01-3 on 14/06/24.
//

import Foundation

class ViewModel: ObservableObject{
    
    @Published var personagens : [personagem] = []
    
    func fetch (){
        guard let url = URL(string: "https://db.ygoprodeck.com/api/v7/cardinfo.php") else{
            return
        }
        let task = URLSession.shared.dataTask(with:url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let jsonDecodificado = try JSONDecoder().decode(yugioh.self, from:data)
                
                DispatchQueue.main.async{
                    self?.personagens = Array(jsonDecodificado.data[0...5])
                }
            }catch{
                print(error)
            }
            
        } //decodifica dados
        task.resume()
    }
}
