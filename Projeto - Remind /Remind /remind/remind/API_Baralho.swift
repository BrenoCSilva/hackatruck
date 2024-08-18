//
//  API.swift
//  remind
//
//  Created by Turma01-3 on 26/06/24.
//


import Foundation


class ViewModelBaralho: ObservableObject{
    
    @Published var carregarBaralho: [Baralho] = [] //baralho
    
    func dadosBaralho(){
        
        guard let url = URL(string: "http://192.168.128.102:1880/baralhoRead") else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let jsonDecodificado = try JSONDecoder().decode([Baralho].self, from: data) //baralho
                
                DispatchQueue.main.async{
                    self?.carregarBaralho = jsonDecodificado
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
    func post(_ obj : Baralho){ //Aqui deve ser colocado o nome da Struct relacionada
        
        guard let url = URL(string: "http://192.168.128.102:1880/baralhoPost") else { return } //Aqui deve ser colocado o IP (local ou da rede) e, depois da barra, o verbo do POST do Node-RED
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        var headers = request.allHTTPHeaderFields ?? [:]
        headers["Content-Type"] = "application/json"
        request.allHTTPHeaderFields = headers
        
        let encoder = JSONEncoder()
        
        do {
            let jsonData = try encoder.encode(obj)
            request.httpBody = jsonData
            print("jsonData: ", String(data: request.httpBody!, encoding: .utf8) ?? "no body data")
        } catch {
            print("Error encoding to JSON: \(error.localizedDescription)")
        }
        
        
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error to send resource: \(error.localizedDescription)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                print("Error to send resource: invalid response")
                return
            }
            
            if httpResponse.statusCode == 200 {
                print("Resource POST successfully")
            } else {
                print("Error POST resource: status code \(httpResponse.statusCode)")
            }
        }
        task.resume()
    }
    
    func put(_ obj : Baralho){
        
        
        guard let url = URL(string: "http://192.168.128.102:1880/baralhoPut") else { return } //Aqui deve ser escrito o IP (da rede ou local) e, depois da barra, o verbo escolhido no fluxo do PUT no Node-RED
        
        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        
        var headers = request.allHTTPHeaderFields ?? [:]
        headers["Content-Type"] = "application/json"
        request.allHTTPHeaderFields = headers
        
        let encoder = JSONEncoder()
        
        do {
            let jsonData = try encoder.encode(obj)
            request.httpBody = jsonData
            print("jsonData: ", String(data: request.httpBody!, encoding: .utf8) ?? "no body data")
        } catch {
            print("Error encoding to JSON: \(error.localizedDescription)")
        }
        
        
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error to send resource: \(error.localizedDescription)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                print("Error to send resource: invalid response")
                return
            }
            
            if httpResponse.statusCode == 200 {
                print("Resource POST successfully")
            } else {
                print("Error POST resource: status code \(httpResponse.statusCode)")
            }
        }
        
        task.resume()
        
    }
    
    func delete(_ obj : Baralho){
        
        
        guard let url = URL(string: "http://192.168.128.102:1880/baralhoDelete") else { return } //Aqui deve ser escrito o IP (da rede ou local) e, depois da barra, o verbo escolhido no fluxo do DELETE no Node-RED
        
        var request = URLRequest(url: url)
        request.httpMethod = "DELETE"
        
        var headers = request.allHTTPHeaderFields ?? [:]
        headers["Content-Type"] = "application/json"
        request.allHTTPHeaderFields = headers
        
        let encoder = JSONEncoder()
        
        do {
            let jsonData = try encoder.encode(obj)
            request.httpBody = jsonData
            print("jsonData: ", String(data: request.httpBody!, encoding: .utf8) ?? "no body data")
        } catch {
            print("Error encoding to JSON: \(error.localizedDescription)")
        }
        
        
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error to send resource: \(error.localizedDescription)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                print("Error to send resource: invalid response")
                return
            }
            
            if httpResponse.statusCode == 200 {
                print("Resource POST successfully")
            } else {
                print("Error POST resource: status code \(httpResponse.statusCode)")
            }
        }
        
        task.resume()
        
        if let index = carregarBaralho.firstIndex(of: obj) {
            carregarBaralho.remove(at: index)
        }
    }
}

