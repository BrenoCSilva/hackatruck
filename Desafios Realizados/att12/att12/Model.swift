//
//  Model.swift
//  att12
//
//  Created by Turma01-3 on 19/06/24.
//

import Foundation
//"data": [
//      {
//        "campeao": "Kaemy",
//        "ano": 2023,
//        "estado": "GO"
//      },
//      {
//        "campeao": "Big Mike",
//        "ano": 2022,
//        "estado": "SP"
//      }

struct API: Decodable, Hashable{
        var data:[descricao]
}

struct descricao: Decodable, Hashable{
        var campeao: String?
        var ano: Int?
        var estado: String?
        var url: String?
}

