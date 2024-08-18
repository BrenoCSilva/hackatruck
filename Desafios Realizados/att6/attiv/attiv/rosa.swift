//
//  rosa.swift
//  attiv
//
//  Created by Turma01-3 on 11/06/24.
//

import SwiftUI

struct rosa: View {
    var body: some View {
        
        ZStack{
            
            Color(.pink)
                .ignoresSafeArea()
            
            Circle()
                .frame(width: 1000, height: 300)
            
            Image(systemName: "paintbrush")
                .resizable()
                .foregroundColor(.pink)
                .frame(width: 200, height: 200)
                
        }
        .padding(.bottom, 20)
        
    }
        
}

#Preview {
    rosa()
}
