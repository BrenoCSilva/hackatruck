//
//  Class.swift
//  att12
//
//  Created by Turma01-3 on 19/06/24.
//

import Foundation

class ViewModel: ObservableObject{
    
    @Published var descricoes : [API] = []
    
    func fetch (){
        guard let url = URL(string: "http://127.0.0.1:1880/campeoesNacionaisRead") else{
            return
        }
        let task = URLSession.shared.dataTask(with:url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let jsonDecodificado = try JSONDecoder().decode([API].self, from:data)
                
                DispatchQueue.main.async{

                    self?.descricoes = jsonDecodificado
                }
            }catch{
                print(error)
            }
            
        } //decodifica dados
        task.resume()
    }
}
