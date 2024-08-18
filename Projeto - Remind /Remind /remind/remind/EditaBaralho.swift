import SwiftUI

struct EditaBaralhoView: View {
    @State private var mostrar_alerta = false
    @State var baralho : Baralho
    @State var novo_nome : String = ""
    
    @Environment(\.presentationMode) var presentationMode
    @StateObject var viewModel = ViewModelBaralho()
    
    var body: some View {
        ZStack {
            Color(.fundo)
                .edgesIgnoringSafeArea(.all)
            
            VStack () {
                                                
                Text ("Editar baralho")
                    .foregroundColor(.white)
                    .font(.system(size: 40).bold())
                    .shadow(radius: 10)
                    .padding(.top, 50)
                    
                Spacer()
                
                Text ("Nome")
                    .foregroundColor(.white)
                    .font(.system(size: 30).bold())
                    .shadow(radius: 10)
                    .padding(.trailing, 230)
                
                HStack {
                    TextField (baralho.nome, text: $novo_nome)
                        .accentColor(.white)
                        .foregroundColor(.white)
                        .padding()
                        .background(.pesquisa1)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        .padding(.bottom, 80)
                        .bold()
                    
                }
                
                Spacer()
                
                HStack {
                    
                    Button (action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Cancelar")
                            .foregroundColor(.white)
                            .font(.system(size: 25).bold())
                            .shadow(radius: 10)
                            .padding()
                            .background(Color.pesquisa1)
                            .cornerRadius(10)
                    }
                    
                    
                    
                    Spacer()
                    
                    Button (action: {
                        mostrar_alerta = true
                        viewModel.put(Baralho(_id: baralho._id, _rev: baralho._rev, nome: novo_nome))
                    }) {
                        Text ("OK")
                            .foregroundColor(.white)
                            .font(.system(size: 25).bold())
                            .shadow(radius: 10)
                            .padding()
                            .background(novo_nome.isEmpty ? Color.gray : Color.pesquisa1)
                            .cornerRadius(10)
                    }
                    .disabled(novo_nome.isEmpty)
                }
                .padding(.bottom, 10)
            }
            .padding()
        } .alert(isPresented: $mostrar_alerta) {
            Alert (
                title: Text("Sucesso"),
                message: Text("O baralho foi editado com êxito"),
                dismissButton: .default(Text("OK")) {
                    presentationMode.wrappedValue.dismiss()
                }
            )
        }
    }
}

#Preview {
    EditaBaralhoView(baralho: Baralho(_id: nil, _rev: nil, nome: "Teste"))
}
