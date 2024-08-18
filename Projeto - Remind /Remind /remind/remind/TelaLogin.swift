import SwiftUI

struct TelaLogin: View {
    @State private var mostrar_alerta = false
    @State var usuario: String = ""
    @State var senha: String = ""
    @State private var autenticacaoFalhou = false
    @State private var autenticacaoSucesso = false
    @StateObject private var viewModelUsuario = ViewModelUsuario()
    @State private var mostrar_sheet = false
    @State private var user_atual: Usuario?

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundo)
                    .edgesIgnoringSafeArea(.all)
               
                VStack {
                    Image(systemName: "brain.head.profile.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .padding(.top, 20)
                   
                    Text("Login/Cadastro")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 20)
                   
                    Spacer()
                    Text("Usuário")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.trailing, 260)
                   
                    TextField("Digite o usuário", text: $usuario)
                        .accentColor(.white)
                        .padding()
                        .background(Color.pesquisa1)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 10)
                   
                    Text("Senha")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.top, 50)
                        .padding(.trailing, 260)
                   
                    SecureField("Digite a senha:", text: $senha)
                        .accentColor(.white)
                        .padding()
                        .background(Color.pesquisa1)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 10)

                    Spacer()

                    NavigationLink(destination: ContentView(usuario: $user_atual), isActive: $autenticacaoSucesso) {
                        EmptyView()
                    }

                    HStack {
                        Button(action: {
                            AutenticarUsuario()
                            if autenticacaoFalhou {
                                usuario = ""
                                senha = ""
                                mostrar_alerta = true
                                autenticacaoFalhou = false
                            }
                        }) {
                            Text("Login")
                                .bold()
                                .frame(width: 100, height: 40)
                                .foregroundColor(.white)
                                .background(usuario.isEmpty || senha.isEmpty ? Color.gray : Color.pesquisa1)
                                .cornerRadius(8)
                        }
                        .disabled(usuario.isEmpty || senha.isEmpty)

                        Spacer()

                        Button {
                            mostrar_sheet = true
                        } label: {
                            Text("Cadastre-se")
                                .bold()
                                .frame(width: 120, height: 40)
                                .foregroundColor(.white)
                                .background(.pesquisa1)
                                .cornerRadius(8)
                           
                        }
                        .sheet(isPresented: $mostrar_sheet) {
                            CriaUsuario()
                        }
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
                    title: Text("Erro"),
                    message:  Text("Usuário ou senha incorretos"),
                    dismissButton: .default(Text("Tentar novamente"))
                )
            }
        }
        .accentColor(.white)
    }

    func AutenticarUsuario() {
        autenticacaoFalhou = true
        for user in viewModelUsuario.carregarUsuario {
            if usuario == user.nome_usuario && senha == user.senha {
                autenticacaoFalhou = false
                autenticacaoSucesso = true
                user_atual = user
                break
            }
        }
    }
}

#Preview {
    TelaLogin(usuario: "", senha: "")
}
