import SwiftUI

struct Ranking: View {
    
    @State var posicao: Int = 0
    
    @StateObject var consumirUsuario = ViewModelUsuario()
    
    @State var a : Int = 0
    
    var body: some View {
        
        ZStack{
            Color.fundo
                .ignoresSafeArea()
            VStack{
  
                VStack(alignment: .leading){
                    ScrollView{
                        VStack{
                          
                            if(consumirUsuario.top3.count >= 2){
                                HStack{
                                    ZStack{
                                        VStack{
                                            
                                            AsyncImage(url: URL(string: consumirUsuario.top3[0].ImagemUrl)){ imagem in
                                                imagem.resizable()
                                            }placeholder: {
                                                ProgressView()
                                            }
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 150, height: 150)
                                            .clipShape(Circle())
                                            
                                            Text("\(consumirUsuario.top3[0].nome_usuario)")
                                                .bold()
                                            Text("Pontuação: \(consumirUsuario.top3[0].pontuacao)")
                                                .bold()
                                        }
                                        .foregroundColor(.white)
                                        
                                        Image(systemName: "crown.fill")
                                            .foregroundColor(.yellow)
                                            .font(.system(size: 70))
                                            .offset(CGSize(width: 0, height: -140.0))
                                        
                                    }
                                }.padding(.top, 65)
                                
                                HStack{
                                    VStack{
                                        Image(systemName: "crown.fill")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 50))
                                        
                                        AsyncImage(url: URL(string: consumirUsuario.top3[1].ImagemUrl)){ imagem in
                                            imagem.resizable()
                                        }placeholder: {
                                            ProgressView()
                                        }
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 100, height: 100)
                                        .clipShape(Circle())

                                        Text("\(consumirUsuario.top3[1].nome_usuario)")
                                            .bold()
                                        Text("Pontuação: \(consumirUsuario.top3[1].pontuacao)")
                                            .bold()
                                    }
                                    .foregroundColor(.white)
                                    
                                    Spacer()
                                    
                                    VStack{
                                        Image(systemName: "crown.fill")
                                            .foregroundColor(.brown)
                                            .font(.system(size: 50))
                                        
                                        AsyncImage(url: URL(string: consumirUsuario.top3[2].ImagemUrl)){ imagem in
                                            imagem.resizable()
                                        }placeholder: {
                                            ProgressView()
                                        }
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100)
                                        .cornerRadius(100)
                                        
                                        Text("\(consumirUsuario.top3[2].nome_usuario)")
                                            .bold()
                                            //.lineLimit(1)

                                        Text("Pontuação: \(consumirUsuario.top3[2].pontuacao)")
                                            .bold()
                                    }
                                    .foregroundColor(.white)
                                    
                                }.offset(CGSize(width: 0, height: -100))
                                    .padding(.horizontal, 10)
                            }
                            
                            // }
                            
                        }
                        VStack{
                            
                            ForEach(Array(consumirUsuario.OutOfTop3.enumerated()), id: \.offset) { index, value in
                                HStack{
                                    //Text("\(consumirUsuario.carregarUsuario)")
                                    //Text("\(posicao) \(index.nome_usuario)")
                                    Text("\(index + 4)")
                                        .bold()
                                    
                                    AsyncImage(url: URL(string: value.ImagemUrl)){ imagem in
                                        imagem.resizable()
                                    }placeholder: {
                                        ProgressView()
                                    }
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())

                                    //Spacer()
                                    Text(" \(value.nome_usuario)")
                                        .lineLimit(1)
                                        .bold()
                                    Text("- \(value.pontuacao)")
                                        .bold()
                                    
                                    //Text("\(posicao)")
                                    Spacer()
                                }
                                .padding()
                                .onAppear(){
                                    //.count
                                    self.posicao = posicao + 1
                                    
                                }
                                .frame(height: 80)
                                .background(Color.pesquisa2)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                .padding(.horizontal, 12)
                            }
                        }.padding(.top, -90)
                        
                    }
                    Rectangle()
                        .ignoresSafeArea()
                        .frame(width: .infinity, height: 5)
                }
            }.onAppear{
                consumirUsuario.dadosUsuario()
                
                //
            }
        }
    }
}

#Preview {
    Ranking()
}

