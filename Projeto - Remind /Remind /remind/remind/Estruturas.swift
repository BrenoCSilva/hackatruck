//
//  Estruturas.swift
//  remind
//
//  Created by Turma01-3 on 26/06/24.
//

import Foundation
import SwiftUI


class globalsheet: ObservableObject{
    @Published var mostrarsheet: Bool = false
    @Published var mostrar_image: Bool = false
    static let compart = globalsheet()
}

struct Baralho: Codable, Hashable {
    var _id: String?
    var _rev: String?
    var nome: String
}

struct Card: Codable, Hashable {
    var _id: String?
    var _rev: String?
    var nome_Baralho: String
    var pergunta: String
    var resposta: String
    var status_question: Bool
}

struct Usuario: Codable, Hashable{
    var _id: String?
    var _rev: String?
    var nome_usuario: String
    var senha: String
    var pontuacao: Int
    var ImagemUrl: String
}

struct Conquista: Hashable {
    var nome: String
    var cor: Color
    var pontosNecessarios: Int
}

