//
//  ContentView.swift
//  att10
//
//  Created by Turma01-3 on 14/06/24.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var teste = ViewModel()
    
    var body: some View {
        VStack {
            List{
                ForEach(teste.personagens){ index in
                    
                    VStack(){
                            Text("\(index.id!)")
                            Text("\(index.name!)")
                            Text("\(index.type!)")
                            Text("\(index.frameType!)")
                            //Text("\(index.desc!)")
                            Text("\(index.race!)")
                            if(index.archetype != nil){
                                Text("\(index.archetype!)")
                            }
                            
                            ForEach(index.card_images!){ i in
                                AsyncImage(url: URL(string: i.image_url!)){ image in
                                    image
                                        .resizable()
                                        .frame(width:100, height:100,  alignment: .center)
                                    
                                    
                                    
                                }placeholder: {
                                    ProgressView()
                                }
            
                            }
                            
                        }
                        .multilineTextAlignment(.center)
                }
            }
        }.onAppear(){
            teste.fetch()
        }
        
    }
}

#Preview {
    ContentView()
}
