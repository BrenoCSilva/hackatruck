//
//  cinza.swift
//  attiv
//
//  Created by Turma01-3 on 11/06/24.
//

import SwiftUI

struct cinza: View {
    var body: some View {

        ZStack{
            
            Color(.gray)
                .ignoresSafeArea()
            
            Circle()
                .frame(width: 1000, height: 300)
            
            Image(systemName: "paintpalette")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 200, height: 200)

        }
        .padding(.bottom, 20)    
    }
}

#Preview {
    cinza()
}
