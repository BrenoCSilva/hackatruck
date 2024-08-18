//
//  individual.swift
//  att8
//
//  Created by Turma01-3 on 12/06/24.
//

import SwiftUI

struct individual: View {
    
 @State var url: String = "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg" // pode deixar isso em bracno

    
    @State var teste : Song
    
    var body: some View {
                
        ZStack{

           LinearGradient(gradient: Gradient(colors: [.green, .AZUL, .blue]), startPoint: .top, endPoint: .bottom)

            VStack{
                AsyncImage(url: URL(string: teste.capa )) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 250, height: 250)
                
                VStack{
                    Text("\(teste.nome)")
                    Text("\(teste.artist)")
                }
                
                HStack(spacing: 30) {
                    Image(systemName: "shuffle")
                    Image(systemName: "backward.end.fill")
                    Image(systemName: "play.fill")
                    Image(systemName: "forward.end.fill")
                    Image(systemName: "repeat")
                }
                .font(.system(size: 24))
                .padding()
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    individual(teste: Song(id: 1, nome: "nome", artist: "artista", capa: "teste"))
    
}
