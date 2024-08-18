//
//  SwiftUIView.swift
//  att12
//
//  Created by Turma01-3 on 19/06/24.
//

import SwiftUI

struct SwiftUIView: View {
    @Binding var laranja : descricao
    
    var body: some View {
        if(laranja !=  nil){
            Text(laranja.campeao!)
              Text("\(laranja.ano!)")
              Text(laranja.estado!)
            AsyncImage(url: URL(string: laranja.url!)){ image in
                image
                    .resizable()
                    .frame(width:100, height:100,  alignment: .center)
                
                
                
            }placeholder: {
                ProgressView()
            }
        }
    }
}


