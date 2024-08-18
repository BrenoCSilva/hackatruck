//
//  ContentView.swift
//  att8
//
//  Created by Turma01-3 on 12/06/24.
//

// imagem distorce rever


import SwiftUI

struct Song: Identifiable{ 
    var id: Int
    var nome: String
    var artist: String
    var capa: String
}

struct ContentView: View {

    var capaAlbum :String = "https://mondoshop.com/cdn/shop/products/unnamed_1.jpg?v=1667674238" // isso e capa princiapl do album precisa ta fora do array
   
    var arrayMusicas = [
        Song(id: 0, nome: "through the valley ", artist: "Shaw James", capa: "https://images.squarespace-cdn.com/content/v1/52127948e4b06d5f9d345a0f/1406307181468-JD5MX6OTIZRR2C7UT7MH/TLOU.jpg?format=1500w"),
        
        Song(id: 1, nome: "through the valley2 ", artist: "Shaw James", capa: "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg"),

        Song(id: 2, nome: "through the valley2 ", artist: "Shaw James", capa: "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg"),

        Song(id: 3, nome: "through the valley2 ", artist: "Shaw James", capa: "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg"),

        Song(id: 4, nome: "through the valley2 ", artist: "Shaw James", capa: "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg"),

        Song(id: 5, nome: "through the valley2 ", artist: "Shaw James", capa: "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg"),

        Song(id: 6, nome: "through the valley2 ", artist: "Shaw James", capa: "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg"),

        Song(id: 7, nome: "through the valley2 ", artist: "Shaw James", capa: "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg"),

        Song(id: 8, nome: "through the valley2 ", artist: "Shaw James", capa: "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg"),

        Song(id: 9, nome: "through the valley2 ", artist: "Shaw James", capa: "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg"),

        Song(id: 10, nome: "through the valley2 ", artist: "Shaw James", capa: "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg"),

        Song(id: 11, nome: "through the valley2 ", artist: "Shaw James", capa: "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg"),

        Song(id: 12, nome: "through the valley2 ", artist: "Shaw James", capa: "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg"),

        Song(id: 13, nome: "through the valley2 ", artist: "Shaw James", capa: "https://i1.sndcdn.com/artworks-000196811674-c4ilgr-t500x500.jpg")

    ]
    
    var body: some View {
       
        NavigationStack{
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.green, .AZUL, .blue]), startPoint: .top, endPoint: .bottom)
                
                
                ScrollView{

                    VStack{ // Essa Vstack e util?
                        
                        AsyncImage(url: URL(string: capaAlbum)) { image in
                                  image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill) // isso serve para que?
                                      
                              } placeholder: {
                                  ProgressView() // analisar isso depois (casa)
                              }
                              .frame(width: 250, height: 250)
                              .padding(.top, 100)
                        
                        Text("Trilha - The last of Us")
                            .padding(.trailing, 100)
                            .font(.system(size: 30))
                            .bold()
                        
                        ForEach(arrayMusicas) { musica in 

                            HStack{
                                NavigationLink(destination: individual(teste: musica )){  // mudar nome do arquivo para telaIndividual
                                        
                                        AsyncImage(url: URL(string: musica.capa)) { image in
                                            image
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                            
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 50, height: 50)
                                        
                                        HStack{
                                            VStack(alignment: .leading){
                                                Text(musica.nome)
                                                Text(musica.artist)
                                                
                                            }
                                            .foregroundColor(.white)
                                            
                                        }
                                    
                                Spacer()
                                Image(systemName: "ellipsis")
                                        .foregroundColor(.black)
                                   
                                }.padding()
                            }
                        }
                        Text("SUGERIDOS")
                            .foregroundStyle(.white)
                            .font(.system(size: 30))
                            .padding(.trailing, 200)
                            .bold()
                         
                         ScrollView(.horizontal){
                             HStack{
                                 ForEach(arrayMusicas){ musica in
                                     
                                     AsyncImage(url: URL(string: musica.capa)) { image in
                                         image
                                             .resizable()
                                             //.aspectRatio(contentMode: .fill)
                                         
                                     } placeholder: {
                                         ProgressView()
                                     }
                                     .frame(width: 250, height: 250)
                                     .padding()
                                     
                                     HStack(/*alignment: .leading*/){
                                         //Text(capaAlbum)
                                     }
                                     .foregroundColor(.white)
                                 }
                             }
                         }
                         .padding(.bottom, 100)
                        
                        
                    }
                }

               
                
            }
            .ignoresSafeArea() // isso é aqui mesmo?
        }
    }
}

#Preview {
    ContentView()
}
