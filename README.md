
# [Hackatruck](https://hackatruck.com.br/)

O [HackaTruck MakerSpace](https://www.instagram.com/hackatruck_makerspace/) é um laboratório móvel tecnológico que tem como objetivo capacitar estudantes de Instituições de Ensino Superior na programação SWIFT para a plataforma iOS. Além de disponibilizar um espaço com várias tecnologias, os alunos têm acesso a dispositivos como o MacBook e o iPhone, que são utilizados como ferramentas de aprendizado.

O projeto foi criado por meio de parcerias entre empresas e instituições, como o [Instituto de Pesquisas Eldorado](https://www.eldorado.org.br/o-eldorado/), a IBM Brasil e a Apple. O caminhão viaja pelo país, disseminando conhecimento sobre essa poderosa ferramenta amplamente utilizada no mercado de criação de aplicativos.

Quando fizeram uma parceria com a [UFES](https://www.instagram.com/ufesoficial/), tive a oportunidade de participar do projeto durante o período de um mês (03/06/2024 a 03/07/2024), vivendo diversas experiências incríveis. Nesse ambiente, tive meu primeiro contato com a tecnologia da Apple. E por meio de uma metodologia bem diferente das aulas convencionais, com aulas dinâmicas onde os instrutores transmitiam conhecimento e logo em seguida nos desafiavam com atividades relacionadas ao aprendizado para serem resolvidas em grupo. As cinco horas diárias no caminhão passavam rapidamente, pois, em grupo, percebi como o desenvolvimento colaborativo é menos cansativo e mais interativo. O compartilhamento de ideias, pensamentos e diferentes formas de resolução de problemas realmente me motivava a participar daquele momento.
<div align="center">
 
<img src="https://github.com/user-attachments/assets/e4993426-0441-4265-bf1a-b24578a6c7a5" width="200"/>

</div>

# Surgimento do Remind

Na primeira semana, por meio de uma dinâmica realizada pelos instrutores, fomos divididos em grupos de quatro integrantes. Recebemos uma série de perguntas para as quais deveríamos escolher uma palavra que se adequasse, como:

- O que te motiva a acordar cedo?
- O que você faz sem precisar de incentivo externo?
  
Minha palavra foi "Consciência". Me reuni com outras três pessoas que escolheram as palavras:  "Conhecimento", "Novidades" e "Esperança". Após definirmos essas palavras, nos reunimos ao percebermos que nossas escolhas tinham uma conexão no âmbito geral. Então, sintetizamos nossas palavras em uma única: APRENDIZADO.
Na última semana do projeto, ficamos responsáveis por desenvolver um protótipo de um aplicativo, e o tema seria a palavra que havíamos definido na primeira semana.
A partir dessa palavra, fizemos um brainstorming sobre o que seria o nosso aplicativo:

* Uma trilha interativa, semelhante ao Duolingo(um aplicativo de aprendizado de idiomas que oferece uma abordagem gamificada para o estudo de diferentes línguas), que ofereceria um estudo guiado pela própria plataforma sobre programação.
* Essa ideia evoluiu para uma plataforma que hospedaria cursos de diferentes professores, ampliando as áreas de conhecimento e permitindo à plataforma crescer sem depender da contratação de especialistas para desenvolver cada trilha de conhecimento.
  
Após pensar em várias ideias, escolhemos a nossa. Eu tinha começado a ter contato com um aplicativo de revisão espaçada. A retenção de conhecimento se enquadrava perfeitamente no nosso tema aprendizado. Lembrei que havia parado de usar esse aplicativo, mas continuava muito ativo no Duolingo, e me perguntei o motivo. A resposta foi a ofensiva e a interatividade do Duolingo.

Refleti sobre os pontos que me desanimaram em relação ao Anki(um software de flashcards que utiliza o método de revisão espaçada para ajudar na retenção de informações a longo prazo) e os que me mantiveram motivado no Duolingo. Compartilhei essas reflexões com meus colegas de equipe, e discutimos a viabilidade do projeto: 

<div align="center">

 `criar um aplicativo de revisão espaçada com a metodologia dos flashcards, e que tenha uma interação maior com o usuário.`

 
E assim surgiu o REMIND.
</div>

# Problema x Solução

A ideia da revisão espaçada é poderosa por si só, pois tem uma capacidade de retorno muito rápida e eficaz. É fácil identificar sua própria evolução em relação a um tema.No entanto, o Anki apresenta algumas limitações que podem levar ao abandono gradual por parte dos usuários.

- Ele exige um alto nível de envolvimento do usuário, que precisa criar suas próprias perguntas e respostas, demandando grande esforço e dedicação.
- Nem sempre há um flashcard disponível diariamente, o que pode afastar o usuário. Quanto menos acessos, mais rápido se perde a conexão com o propósito inicial.

Para mim, como estudante ativo, seria muito útil ter esse retorno no aplicativo. Em algum momento, a motivação e a disciplina podem enfraquecer, e ter algo como um incentivo adicional entive seria essencial.

A longo prazo, apesar de o flashcard se auto sustentar, sem um incentivo a curto prazo, o usuário tende a perder interesse devido à falta de organização, motivação e autodisciplina. Em períodos em que o aluno não tem uma rotina estruturada, como nas férias, seria importante incentivá-lo a continuar aprendendo algo novo, por meio de uma ofensiva por exemplo, algo que medisse sua constância na execução de uma atividade ou até mesmo um sistema de ranking.

# Desenvolvimento

 Apresentamos aos instrutores a ideia e as telas que pensávamos que o aplicativo teria, eles viabilizaram analisando o que foi ensinado, o prazo,e  o quanto poderiamos precisar de auxílio.
 
# Conhecimentos Gerais trabalhados 

   * SwiftUI: Domínio na criação de interfaces de usuário utilizando Views e Modifiers para personalização e composição de elementos visuais.

   * Stacks (VStack, HStack, ZStack): Implementação de layouts flexíveis e organizados, utilizando diferentes pilhas para alinhar e sobrepor componentes.

   * TextField: Configuração e manipulação de campos de texto interativos para entrada de dados do usuário.

   * Variáveis de Estado: Uso de @State para gerenciar e atualizar o estado de variáveis de forma reativa, refletindo mudanças na interface.

   * TabView: Criação de interfaces de navegação com múltiplas abas, facilitando a organização do conteúdo em seções distintas.

   * NavigationLink: Configuração de navegações entre diferentes telas e views dentro do aplicativo.

   * ScrollView: Implementação de rolagem para exibir conteúdo extenso de forma fluida e responsiva.

   * ForEach: Iteração eficiente sobre coleções de dados para gerar listas e componentes dinâmicos.

   * MapKit: Integração de mapas e funcionalidades de localização, permitindo a exibição e interação com mapas diretamente no aplicativo.

   * List: Criação de listas dinâmicas, configurando células personalizadas para exibir coleções de dados.

   * Consumo de API: Fazer requisições a um serviço para acessar suas funcionalidades ou dados. Recebendo dados no formato JSON e convertendo para estruturas.

   * Criação de API: Desenvolvimento e hospedagem de APIs para fornecer dados ao aplicativo.

<h1>Tecnologias utilizadas </h1>


![SwiftUI](https://img.shields.io/badge/SwiftUI-F05138?style=for-the-badge&logo=swift&logoColor=white)
![IBM Cloud](https://img.shields.io/badge/IBM_Cloud-1261FE?style=for-the-badge&logo=ibmcloud&logoColor=white)
![Node-RED](https://img.shields.io/badge/Node--RED-FF0000?style=for-the-badge&logo=nodered&logoColor=white)
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white)
![macOS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=apple&logoColor=white)


<h2>IBM Cloud </h2> 

 <p>
   
  `Finalidade`: Hospedagem da API
   
   `Descrição`: Foi Utilizada para hospedar a API, garantindo que ela estivesse disponível online e acessível para o aplicativo. A IBM Cloud forneceu a infraestrutura necessária para a execução contínua da API.
</p>

<h2>Node-RED</h2>
<p>
  
   `Finalidade`: Node-RED é uma ferramenta de desenvolvimento baseada em fluxo para programação visual com o objetivo de conectar dispositivos de hardware, APIs e serviços online. Então atuou no Desenvolvimento e gerenciamento da API.

  `Descrição`:  Foi Configurado para criar e gerenciar fluxos de trabalho que atuaram como uma ponte entre a API hospedada na IBM Cloud e as requisições feitas através do Postman. O Node-RED  implementou as operações CRUD, e conectou a API com o sistema de testes e manipulação de dados.
  
 #### **Operações `CRUD` Implementadas:**

 1. **Create (Criar):** Adiciona novos dados ao sistema com requisições HTTP POST.
   
     Exemplo: Criar um novo card com uma requisição POST para o endpoint /card.
  
 2. **Read (Ler):** Recupera dados existentes com requisições HTTP GET.

      Exemplo: Listar todos os cards com uma requisição GET para o endpoint /card.
 
 3. **Update (Atualizar):** Modifica dados existentes com requisições HTTP PUT.
   
    Exemplo: Atualizar os detalhes de um card com uma requisição PUT para o endpoint /card.
 
 4. **Delete (Excluir):** Remove dados do sistema com requisições HTTP DELETE.

     Exemplo: Excluir um card específico com uma requisição DELETE para o endpoint /card.


**Estrutura do Fluxo - Endpoints HTTP para Usuários**

| Método | Endpoint                                         | Descrição                                                   |
|--------|--------------------------------------------------|-------------------------------------------------------------|
| GET    | `http://192.168.128.102:1880/usuarioRead`       | 📖 Recupera dados de um usuário do banco de dados.            |
| POST   | `http://192.168.128.102:1880/usuarioPost`       | ➕ Insere novos dados de usuário no banco de dados.           |
| PUT    | `http://192.168.128.102:1880/usuarioPut`        | ✏️ Atualiza dados existentes de um usuário no banco de dados. |
| DELETE | `http://192.168.128.102:1880/usuarioDelete`     | ❌ Exclui dados de um usuário do banco de dados.              |

           

<h2>Postman</h2>
<p>
  
  `Finalidade:` Teste e manipulação de dados da API. O Postman executou as operações CRUD implementadas pelo Node-Red.
  
 `Descrição:` Utilizado para testar a API e enviar dados para ela. Com o Postman, foram realizadas as seguintes atividades:
    
  - Envio de Requisições: Teste das operações CRUD enviando requisições HTTP para os endpoints da API. Por exemplo, adicionar novos dados, recuperar dados existentes, atualizar ou excluir dados.
       
  - Manipulação de Dados: Envio de dados em JSON para verificar a funcionalidade da API e garantir que as operações fossem realizadas conforme o esperado.
</p>  

<h2>SwiftUI</h2>
<p>

   `Finalidade:` Desenvolvimento do frontend do aplicativo
   
   `Descrição:` Utilizado para desenvolver a interface do usuário do aplicativo. As seguintes atividades foram realizadas:
  
  - Consumo da API: Implementação de código para conectar o aplicativo aos dados fornecidos pela API. Isso envolveu realizar requisições HTTP para os endpoints da API.
  
  - Conversão de Dados: Os dados retornados pela API vinham no formato JSON. Foi realizada a conversão desses dados JSON para tipos de dados Swift usando o protocolo Codable, permitindo que o aplicativo exibisse e manipulasse os dados.
  
</p>

<h1 align="center" ><strong>TELAS DO PROTÓTIPO</strong></h1>

Aqui irei apresentar de forma geral as telas do protótipo, e o que foi realizado em aproximadamente 7 dias pelo grupo. O aplicativo foi testado ao vivo em um iPhone SE. Infelizmente, na época, não foi gravado o aplicativo em execução. Mesmo não tendo material para apresentar em sua totalidade máxima tudo que foi implementado, tentarei dar uma noção do que tentamos e conseguimos implementar no aplicativo.

##

<h2>1 - Tela de Cadastro e Login</h2>

  `Finalidade:` Se o utilizador já tiver uma conta, basta inserir o nome de usuário e a senha para que o nosso aplicativo, integrado à "API de Usuários", recupere as informações associadas a essa conta. Caso o utilizador não tenha uma conta, ao clicar no botão "Cadastrar-se", uma <u>Sheet View</u> (Tela que surge de baixo para cima e não cobre toda tela, permitindo que não haja troca de view, apenas uma sobreposição) será apresentada, com campos para serem registrados seu nickname e senha.Uma vez concluído o cadastro, um novo usuário será criado na API e as informações serão armazenadas.

<div align = "center">
  <img src="https://github.com/user-attachments/assets/7bc73f29-0d77-4563-91aa-55d532bd4ab6" height="300px" />
</div>


<h2> 2 - Tela de Baralho</h2>

  `Finalidade:` Um baralho seria um conjunto de cards com uma mesma temática. Sendo essa a tela inicial após o login. Nela, os baralhos do usuário estarão disponíveis para visualização e edição. Existindo a possibilidade de alterar o título de um baralho, excluí-lo, e até acessa-lo para visualizar seus flashcards. Na parte superior, há uma barra de pesquisa que filtra os baralhos com base no nome digitado. Na parte inferior, é possível adicionar um novo baralho. Ainda na parte inferior, uma barra fixa permite a navegação entre as principais views do aplicativo.

<div align = "center">
  <img  src="https://github.com/user-attachments/assets/f5704876-4b15-4ee0-b47f-f80ca232212e" height="300px"/>
</div>

<h2> 3 - Tela de Cards </h2>

   `Finalidade:` Ao entrar em um baralho, todos os flashcards já criados sobre o tema serão exibidos. Novamente, será possível editar ou excluir. Uma Sheet View é exibida, permitindo que o usuário altere a pergunta e a resposta de um flashcard.  Antes de concluir a edição ou exclusão, seja de um baralho ou de um flashcard, um alerta aparecerá na tela, solicitando a confirmação do usuário para executar a ação desejada.


<div align="center">
    <img src="https://github.com/user-attachments/assets/f55995af-6b71-40cb-9d52-9a988c4e87f7" height="300px"/>
</div>

<h2> 4 - O Flashcard </h2>

`Finalidade:`  Nesta etapa, o usuário pode visualizar como o flashcard será exibido. Primeiro, a pergunta aparecerá, e ao clicar no botão, a resposta será mostrada por meio de uma Sheet View. Na parte inferior, há botões para que o usuário faça sua autoavaliação, após ter tentado responder à pergunta. O usuário pode então avaliar seu desempenho e informar ao aplicativo, com base na avaliação, o tempo adequado para que o flashcard seja revisado novamente.

<div align="center">
    <img src="https://github.com/user-attachments/assets/e89d99a2-85cb-4149-acca-9f7780748bce" height="320px"/>
    <img src= "https://github.com/user-attachments/assets/de2544ed-4852-45d6-b1f6-088dd44ac866" height="300px"/>
</div>

 <h2> 5 - Licões Diárias</h2>
 
 `Finalidade:` Esta aba tem como objetivo mostrar ao usuário, com base em suas avaliações anteriores, quais flashcards devem ser revisados no dia atual. Uma exclamação ao lado do card indica que a revisão ainda não foi realizada. Assim que o flashcard é revisado, a exclamação é substituída por um ✔️.
 
<div align="center">
   <img src="https://github.com/user-attachments/assets/017a5397-a008-489d-b620-371f45106b98" height="300px"/>
</div>

 <h2> 6 - Ranking</h2>
 
   `Finalidade:` O ranking atua como uma representação visual e competitiva da progressão do usuário ao longo do tempo. Uma pontuação será atribuída ao usuário após a conclusão de suas atividades diárias (o sistema de pontuação será discutido posteriormente como parte das medidas de implementação). Além disso, a construção desse sistema visa fomentar um ambiente de interação, evitando a sensação de isolamento durante o processo de revisão espaçada. Ele reforça a ideia de que outros usuários também estão se esforçando para alcançar suas metas, promovendo um senso de inclusão. Isso é especialmente relevante, pois o aplicativo utilizado como base para a criação do Remind não explorou esse aspecto. Considerando a dependência do usuário para continuar com a metodologia de revisão espaçada, a falta de incentivo pode levar ao afastamento da prática devido ao desgaste.

<div align="center">
   <img src="https://github.com/user-attachments/assets/0c0a998a-a5ab-4b32-ad32-865cc4ba17ec" height="300px"/>
</div>

 <h2> 7 - Perfil </h2>
 
   `Finalidade:` A view de perfil visa tornar o aplicativo mais interativo e dinâmico. Nela, o usuário pode visualizar sua pontuação acumulada, bem como seu progresso nas conquistas. Ao seleciona-la, o usuário pode ver qual é o próximo meta para evoluir nessa conquista.

<div align="center">
    <img src="https://github.com/user-attachments/assets/99047f80-d278-4028-833a-32bf54d8ec93" height="300px"/>
</div>


<h1>Implementações futuras</h1>

Muitas ideias não puderam ser aplicadas no momento da criação do protótipo.

   Pontuação: A pontuação foi amplamente discutida entre os membros do grupo, pois queríamos uma forma justa de atribuição de pontos. Inicialmente, pensamos em conceder pontos por revisar um flashcard, mas essa abordagem parecia inadequada. Como o usuário cria suas próprias perguntas e respostas, ele poderia consultar essas respostas em outro documento para obter uma vantagem. Além disso, a ideia de validar pontos com base na autoavaliação do desempenho também apresentava problemas. Em vez disso, consideramos uma abordagem baseada na consistência do usuário: premiar com pontos pela quantidade de dias seguidos em que o usuário completa pelo menos um flashcard diário. Esses pontos seriam multiplicados por um fator fixo que aumentaria a cada dez dias consecutivos alcançados. No entanto, ainda pensamos em algo mais interessante. Ao final do dia, com base nos flashcards respondidos, a ideia é utilizar uma IA para gerar  perguntas com alternativas, das quais apenas uma seria correta. A pergunta gerada manteria o sentido da resposta fornecida pelo usuário, mas a formulação seria diferente, evitando o problema de o usuário já ter as respostas. Isso permitiria atribuir pontuação a esse simulado diário criado pela IA do aplicativo. Essa abordagem incentiva a compreenção ainda maior do assunto abordado no flashcard.

   FlashCards: Outra ideia discutida seria a de ajudar o usuário na criação de seus flashcards. Após selecionar um tema através de um  banco de dados com perguntas e respostas criadas por outros usuários, uma IA poderia sugerir uma pegunta e resposta.


<h1>Informações Adicionais</h1>

O projeto se encontra atualmente em estado de suspensão, pois não temos acesso ao equipamento necessário para dar prosseguimento e aplicar melhorias.    

# Feedback 

No último dia, apresentamos nossa ideia e protótipo para os outros alunos, para os instrutores que nos ajudaram a superar todas as barreiras ao longo do caminho, e para pessoas externas que demonstraram interesse. Foi uma experiência única, da qual tive o prazer de participar. O local era muito bem equipado tecnologicamente, oferecendo todos os recursos necessários para o aprendizado. Além disso, o ambiente era extremamente acolhedor, com instrutores abertos e comunicativos, altamente capacitados e com uma didática excelente.

<h1>Colaboradores</h1>

<div align="center">
   <img src="https://github.com/user-attachments/assets/79bd5aab-bdfe-4cef-b795-2cbfb05ef3b5" height="300px"/>
 
 [Breno Costa Silva](https://www.instagram.com/breno.portgas/) 
 [Guilherme Figueiredo Louzada](https://www.instagram.com/guilhermefigueiredo94/)
 [Luiz Felipe Nolasco](https://www.instagram.com/lfelipe.n/)
 [Alvaro Antunes de Oliveira](https://www.instagram.com/alvaroantunes019/)

</div>

