//
//  model.swift
//  att10
//
//  Created by Turma01-3 on 14/06/24.
//

import Foundation


struct yugioh: Decodable{ // api
    
    var data : [personagem] // moeda
    
}

struct personagem: Decodable, Identifiable{ // coin
    
    var id: Int?
    var name: String?
    var type: String?
    var frameType: String?
    var desc: String?
    var race: String?
    var archetype: String?
    var card_images : [imagens]?
    

}

struct imagens: Decodable, Identifiable{
            
    var id: Int?
    var image_url: String?
    var image_url_small: String?
    var image_url_cropped: String?
            
}


//endpoint https://db.ygoprodeck.com/api/v7/cardinfo.php



//"data": [
//    {
//      "id": 34541863,
//      "name": "\"A\" Cell Breeding Device",
//      "type": "Spell Card",
//      "frameType": "spell",
//      "desc": "During each of your Standby Phases, put 1 A-Counter on 1 face-up monster your opponent controls.",
//      "race": "Continuous",
//      "archetype": "Alien",
//      "ygoprodeck_url": "https://ygoprodeck.com/card/a-cell-breeding-device-9766",
//      "card_sets": [
//        {
//          "set_name": "Force of the Breaker",
//          "set_code": "FOTB-EN043",
//          "set_rarity": "Common",
//          "set_rarity_code": "(C)",
//          "set_price": "0"
//        }
//      ],
//      "card_images": [
//        {
//          "id": 34541863,
//          "image_url": "https://images.ygoprodeck.com/images/cards/34541863.jpg",
//          "image_url_small": "https://images.ygoprodeck.com/images/cards_small/34541863.jpg",
//          "image_url_cropped": "https://images.ygoprodeck.com/images/cards_cropped/34541863.jpg"
//        }
//      ],
//      "card_prices": [
//        {
//          "cardmarket_price": "0.08",
//          "tcgplayer_price": "0.17",
//          "ebay_price": "0.99",
//          "amazon_price": "24.45",
//          "coolstuffinc_price": "0.25"
//        }
//      ]
//    },
