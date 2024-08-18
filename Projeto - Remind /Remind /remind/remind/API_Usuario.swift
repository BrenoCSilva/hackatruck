//
//  API.swift
//  remind
//
//  Created by Turma01-3 on 26/06/24.
//


import Foundation


class ViewModelUsuario: ObservableObject{
    
    @Published var carregarUsuario: [Usuario] = []
    @Published var top3: [Usuario] = []
    @Published var OutOfTop3: [Usuario] = []
    
    func dadosUsuario(){
        
        guard let url = URL(string: "http://192.168.128.102:1880/usuarioRead") else{ // mudar endpoint
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                let jsonDecodificado = try JSONDecoder().decode([Usuario].self, from: data)
                
                DispatchQueue.main.async{
                    self?.carregarUsuario = jsonDecodificado
                    self?.ftop3()
                    self?.UsersOutOftop3()
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
    
    func ftop3(){
        top3 =  Array(carregarUsuario.sorted(by: { $0.pontuacao > $1.pontuacao })[0...2])
        
    }
    
    func UsersOutOftop3() {
        self.OutOfTop3 = self.carregarUsuario
        
        for a in top3{
            if let index = self.OutOfTop3.firstIndex(of: a) {
                self.OutOfTop3.remove(at: index)
            }
        }
        
        self.OutOfTop3 = OutOfTop3.sorted(by: { $0.pontuacao > $1.pontuacao })
    }
    
    func post(_ obj : Usuario){ //Aqui deve ser colocado o nome da Struct relacionada
        
        guard let url = URL(string: "http://192.168.128.102:1880/usuarioPost") else { return } //Aqui deve ser colocado o IP (local ou da rede) e, depois da barra, o verbo do POST do Node-RED
        
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
    
    
    func put(_ obj : Usuario){
        
        
        guard let url = URL(string: "http://192.168.128.102:1880/usuarioPut") else { return } //Aqui deve ser escrito o IP (da rede ou local) e, depois da barra, o verbo escolhido no fluxo do PUT no Node-RED
        
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

    
}


