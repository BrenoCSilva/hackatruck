//
//  Individual.swift
//  att9
//
//  Created by Turma01-3 on 14/06/24.
//

import SwiftUI

struct Individual: View {
    @State var name:String =  ""
    @State var flag: String = ""
    @State var description: String = ""
    var body: some View {
        
        VStack{
            Text("\(name) ")
                .padding(.top, 50)
                .bold()
            Spacer()
            AsyncImage(url: URL(string: flag)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200)
            //.padding(.top, 680)
            Spacer()
            
            Text("\(description)")
            Spacer()
        }
    }
}

#Preview {
    Individual(name:"", flag: "", description: "")
}
