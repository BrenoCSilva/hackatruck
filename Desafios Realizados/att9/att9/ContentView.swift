//
//  ContentView.swift
//  att9
//
//  Created by Turma01-3 on 13/06/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var mostrarSheet = false
    
    @State var localAtual = "Montanha"
    
    
    @State var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude:  -18.1263, longitude: -40.3662),
            span: MKCoordinateSpan(latitudeDelta:1, longitudeDelta:1)
        )
    )
    
    struct Location: Identifiable{
        let id = UUID()
        let name: String
        let coordinate: CLLocationCoordinate2D
        let flag: String
        let description: String
    }
    
    var arrayPaises = [
        Location(
            name: "Montanha",
            coordinate: CLLocationCoordinate2D(latitude: -18.1263, longitude:-40.3662),
            flag:
                "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/BANDEIRA_DE_MONTANHA.jpg/1599px-BANDEIRA_DE_MONTANHA.jpg",
            description:
                "Montanha é um município brasileiro no estado do Espírito Santo, Região Sudeste do país. Localiza-se na região norte capixaba e ocupa uma área de cerca de 1 100 km². Sua população foi estimada em 18 900 habitantes em 2022."
        ),
        
        Location(
            name: "Washignton",
            coordinate: CLLocationCoordinate2D(latitude: 38.9041, longitude:-77.0171),
            flag:
                "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_the_United_States.svg/2560px-Flag_of_the_United_States.svg.png",
            description:
                "Washington, DC, capital dos EUA, é uma cidade compacta às margens do rio Potomac, vizinha aos estados de Maryland e Virgínia. Nela, destacam-se monumentos e prédios neoclássicos imponentes, como os que servem de sede aos 3 poderes federais: o Capitólio, a Casa Branca e a Suprema Corte. A cidade também abriga museus emblemáticos e centros de artes cênicas, como o Kennedy Center. ."
        ),
        
        Location(
            name: "Argentina",
            coordinate: CLLocationCoordinate2D(latitude: -34.6083, longitude:-58.3712),
            flag:
                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/250px-Flag_of_Argentina.svg.png",
            description:
                "Buenos Aires é a capital cosmopolita da Argentina. Seu centro é a Praça de Maio, com imponentes edifícios do século 19, como a Casa Rosada, o emblemático palácio presidencial com sacadas. Outras importantes atrações são o Teatro Colón, uma casa de ópera inaugurada em 1908 com cerca de 2.500 lugares, e o moderno museu MALBA, com sua coleção de arte latino-americana."
        )

    
    ]
    
// tentar colocar todo o codifo no map {} e o anntoion no for each interno
    
    
    var body: some View {
        
        
        NavigationStack{
            ZStack{
                

                Map(position: $position){
                    ForEach(arrayPaises){ localAtual_pin in
                        Annotation("", coordinate: localAtual_pin.coordinate){ // fixa o pin no local indicado
                        
                            Button{
                                mostrarSheet = true
                            }label: {                                       // rotulo ou uma

                                Image(systemName: "signpost.right.circle.fill")
                                .resizable()
                                .frame(width: 25, height: 25)

                            }.sheet(isPresented: $mostrarSheet) {

                                Individual(name: localAtual_pin.name, flag: localAtual_pin.flag, description:localAtual_pin.description)
                            }

                        }
                    }
                }
                .ignoresSafeArea()


                    
                
                // Titulo do local - testar em um Vtack
                Group{
                    VStack{     
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 400, height: 200)
                            .opacity(0.8)
                            .padding(.bottom, 680)
                    }
                    
                    Text("World Map")
                        .padding(.bottom, 680)
                        .bold()
                        .font(.system(size: 30))
                    
                    Text(localAtual)
                        .padding(.bottom, 580)
                    
                }

                VStack{
                    HStack{
                        ForEach(arrayPaises){ index in
                            
                            // painel de paises botao
                            Group{
                                Button {
                                    
                                    position = MapCameraPosition.region(
                                        MKCoordinateRegion(
                                            center: CLLocationCoordinate2D(latitude: index.coordinate.latitude, longitude: index.coordinate.longitude),
                                            span: MKCoordinateSpan(latitudeDelta:1, longitudeDelta: 1) // trocar amplitude para menor
                                            
                                        ))
                                    localAtual = index.name

                                    // colocar location

                                } label: {
                                    AsyncImage(url: URL(string: index.flag)) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                        
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 100, height: 50)
                                    .padding(.top, 680)
                                    Spacer()
                                }
                            }
                            
                        }
                    }
                   
                }
                
               
            }
        }
    }
}

#Preview {
    ContentView()
}

