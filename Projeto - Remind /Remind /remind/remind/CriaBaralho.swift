import SwiftUI

struct CriaBaralhoView: View {
    @State private var mostrar_alerta = false
    @State private var nomeBaralho : String = ""
    @Environment(\.presentationMode) var presentationMode
    @StateObject var viewModel = ViewModelBaralho()
    
    var body: some View {
        ZStack {
            Color(.fundo)
                .edgesIgnoringSafeArea(.all)
            
            VStack () {
                                
                Text ("Criar baralho")
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
                
                TextField ("", text: $nomeBaralho)
                    .accentColor(.white)
                    .foregroundColor(.white)
                    .padding()
                    .background(.pesquisa1)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    .padding(.bottom, 80)
                    .bold()
                
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
                        viewModel.post(Baralho(_id: nil, _rev: nil, nome: nomeBaralho))
                    }) {
                        Text ("OK")
                            .foregroundColor(.white)
                            .font(.system(size: 25).bold())
                            .shadow(radius: 10)
                            .padding()
                            .background(nomeBaralho.isEmpty ? Color.gray : Color.pesquisa1)
                            .cornerRadius(10)
                    }
                    .disabled(nomeBaralho.isEmpty)
                }
                .padding(.bottom, 10)
            }
            .padding()
        } .alert(isPresented: $mostrar_alerta) {
            Alert (
                title: Text("Sucesso"),
                message: Text("O baralho foi criado com êxito"),
                dismissButton: .default(Text("OK")) {
                    presentationMode.wrappedValue.dismiss()
                }
            )
        }
    }
}

#Preview {
    CriaBaralhoView()
}

