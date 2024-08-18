//
//  SheetCard.swift
//  remind
//
//  Created by Turma01-1 on 26/06/24.
//

import SwiftUI

struct CriaUsuario: View {
    @State private var nome_usuario: String = ""
    @State private var senha: String = ""
    @State private var mostrar_alerta = false
    @Environment(\.presentationMode) var presentationMode
    @StateObject var viewModelUsuario = ViewModelUsuario()

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundo)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Text("Cadastrar usuário")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 100)
                        
                    Spacer()
                    Text("Nome do usuário")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.trailing, 150)
                    
                    TextField("Digite um nome:", text: $nome_usuario)
                        .accentColor(.white)
                        .padding()
                        .background(.pesquisa1)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 10)
                    
                    
                    Text("Senha")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.top, 50)
                        .padding(.trailing, 260)
                    
                    SecureField("Digite uma senha:", text: $senha)
                        .accentColor(.white)
                        .padding()
                        .background(.pesquisa1)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 10)
                    
                    Spacer()
                    
                    HStack {
                        Button(action : {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("Cancelar")
                                .bold()
                                .frame(width: 100, height: 40)
                                .foregroundColor(.white)
                                .background(.pesquisa1)
                                .cornerRadius(8)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            viewModelUsuario.post(Usuario(_id: nil, _rev: nil, nome_usuario: nome_usuario, senha: senha, pontuacao: 0, ImagemUrl: "https://thumbs.dreamstime.com/b/vetor-de-%C3%ADcone-perfil-do-avatar-padr%C3%A3o-foto-usu%C3%A1rio-m%C3%ADdia-social-183042379.jpg"))
                            
                            mostrar_alerta = true
                            
                        }) {
                            Text("Cadastre-se")
                                .bold()
                                .frame(width: 100, height: 40)
                                .foregroundColor(.white)
                                .background(nome_usuario.isEmpty || senha.isEmpty ? Color.gray : .pesquisa1)
                                .cornerRadius(8)
                        }
                        .disabled(nome_usuario.isEmpty || senha.isEmpty)
                    }
                    .padding(.bottom, 30)
                    .padding(.horizontal, 15)
                     
                }
                .onAppear() {
                    viewModelUsuario.dadosUsuario()
                }
            }
            .alert(isPresented: $mostrar_alerta) {
                Alert (
                    title: Text("Sucesso"),
                    message:  Text("O usuário foi criado com êxito."),
                    dismissButton: .default(Text("OK")) {
                        presentationMode.wrappedValue.dismiss()
                    }
                )
            }
        }
    }
}

#Preview {
    CriaUsuario()
}

