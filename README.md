# hackatruck

O HackaTruck MakerSpace é um laboratório móvel tecnológico que tem como objetivo capacitar estudantes de Instituições de Ensino Superior na programação SWIFT para a plataforma iOS. Além de disponibilizar um espaço com várias tecnologias, os alunos têm acesso a dispositivos como o MacBook e o iPhone, que são utilizados como ferramentas de aprendizado.

O projeto foi criado por meio de parcerias entre empresas e instituições, como o Instituto de Pesquisas Eldorado, a IBM Brasil e a Apple. O caminhão viaja pelo país, disseminando conhecimento sobre essa poderosa ferramenta amplamente utilizada no mercado de criação de aplicativos.

Em parceria com a UFES, tive a oportunidade de participar do projeto durante o período de um mês (03/06/2024 a 03/07/2024), vivendo diversas experiências incríveis. Nesse ambiente, tive meu primeiro contato com a tecnologia da Apple. E por meio de uma metodologia bem diferente das aulas convencionais, com aulas dinâmicas onde os instrutores transmitiam conhecimento e logo em seguida nos desafiavam com atividades relacionadas ao aprendizado para serem resolvidas em grupo. As cinco horas diárias no caminhão passavam rapidamente, pois, em grupo, percebi como o desenvolvimento colaborativo é menos cansativo e mais interativo. O compartilhamento de ideias, pensamentos e diferentes formas de resolução de problemas realmente me motivava a participar daquele momento.

Na primeira semana, por meio de uma dinâmica realizada pelos instrutores, fomos divididos em grupos de quatro integrantes. Recebemos uma série de perguntas para as quais deveríamos escolher uma palavra que se adequasse, como:

- O que te motiva a acordar cedo?
- O que você faz sem precisar de incentivo externo?
  
Minha palavra foi "Consciência". Me reuni com outras três pessoas que escolheram as palavras:  "Conhecimento", "Novidades" e "Esperança". Após definirmos essas palavras, nos reunimos ao percebermos que nossas escolhas tinham uma conexão no âmbito geral. Então, sintetizamos nossas palavras em uma única: APRENDIZADO.
Na última semana do projeto, ficamos responsáveis por desenvolver um protótipo de um aplicativo, e o tema seria a palavra que havíamos definido na primeira semana.
A partir dessa palavra, fizemos um brainstorming sobre o que seria o nosso aplicativo:

* Uma trilha interativa, semelhante ao Duolingo, que ofereceria um estudo guiado pela própria plataforma sobre programação.
* Essa ideia evoluiu para uma plataforma que hospedaria cursos de diferentes professores, ampliando as áreas de conhecimento e permitindo à plataforma crescer sem depender da contratação de especialistas para desenvolver cada trilha de conhecimento.
  
Após pensar em várias ideias, escolhemos a nossa. Eu comecei a ter contato com um aplicativo de revisão espaçada. A retenção de conhecimento se enquadrava perfeitamente no nosso tema de aprendizado. Lembrei que havia parado de usar esse aplicativo, mas continuava muito ativo no Duolingo, e me perguntei o motivo. A resposta foi a ofensiva e a interatividade do Duolingo.

Refleti sobre os pontos que me desanimaram em relação ao Anki e os que me mantiveram motivado no Duolingo. Compartilhei essas reflexões com meus colegas de equipe, e discutimos a viabilidade do projeto: criar um aplicativo de revisão espaçada com flashcards, mas com uma interação maior com o usuário.
A ideia da revisão espaçada é poderosa por si só, pois tem uma capacidade de retorno muito rápida e eficaz. É fácil identificar sua própria evolução em relação a um tema. No entanto, o Anki possui algumas limitações que podem fazer com que os usuários o abandonem aos poucos.

Ele depende muito do usuário, que precisa criar as perguntas e respostas (exigindo mais esforço e dedicação).
Nem sempre há um flashcard disponível todos os dias, o que pode distanciar o usuário. Para mim, como estudante ativo, seria muito útil ter esse retorno no aplicativo. Em algum momento, a motivação e a disciplina podem enfraquecer, e ter algo a mais que incentive a continuar seria essencial.

A longo prazo, apesar de o flashcard se auto sustentar, sem um incentivo diário, o usuário tende a perder interesse devido à falta de organização, motivação e autodisciplina. Em períodos em que o aluno não tem uma rotina estruturada, como nas férias, seria importante incentivá-lo a continuar aprendendo algo novo, por meio da ofensiva do aplicativo e até de um sistema de ranking.

E assim surgiu o REMIND.

No último dia, apresentamos nossa ideia e protótipo para os outros alunos, para os instrutores que nos auxiliaram em todas as barreiras que encontramos pelo caminho, e para pessoas externas que demonstraram interesse. Uma experiência única que tive o prazer de viver. O local era muito bem equipado em termos de tecnologia, proporcionando todos os recursos necessários para o aprendizado. Além disso, o ambiente era extremamente leve, com instrutores super abertos e comunicativos, altamente capacitados e com uma didática excelente.

##

<h1>Telas do protótipo </h1>

<h2>1 - Tela de Cadastro e Login</h2>
<p>Se o utilizador já tiver uma conta, basta inserir o nome de usuário e a senha para que o nosso aplicativo, integrado à "API de Usuários", recupere as informações associadas a essa conta. Caso o utilizador não tenha uma conta, ao clicar no botão "Cadastrar-se", uma <em>Sheet View</em>(Tele que surge de baixo para cima e não cobre toda tela, permitindo que não haja troca de view, apenas um sobreposição) será apresentada, com campos para serem registrados seu nickname e senha.Uma vez concluído o cadastro, um novo usuário será criado na API e as informações serão armazenadas.
</p>
<div style="text-align: center;>
  <img src="https://github.com/user-attachments/assets/7bc73f29-0d77-4563-91aa-55d532bd4ab6" height="300px" />
</div>


<h2> 2 - Tela de Baralho</h2>
<img src="https://github.com/user-attachments/assets/f5704876-4b15-4ee0-b47f-f80ca232212e" height="300px"/>

<h2> 3 - Tela de Cards</h2>
Finalidade:
<img src="https://github.com/user-attachments/assets/f55995af-6b71-40cb-9d52-9a988c4e87f7" height="300px"/>

<h2> 4 - O Flashcard </h2>
  Finalidade: Aqui o usuário pode averiguar como o flashcard aparecerá para ele. Primeiro a Pergunta, e após um click na tela a resposta aparece e na parte inferior, a partir de sua autoavalição do seu desempenho ao tentar respoder a pergunta é possível avaliar para que o flashcard volte daqui a algum tempo.
  
<img src="https://github.com/user-attachments/assets/aca4a7e9-79cf-4865-bffd-edde2d3aeaec" height="300px"/>
<img src= "https://github.com/user-attachments/assets/de2544ed-4852-45d6-b1f6-088dd44ac866" height="300px"/>

 <h2> 5 - Licões Diárias</h2>
  Finalidade: Essa aba tem como finalidade mostrar ao usuário a partir de suas avaliações de cards feitos anteriormente quais flashcards ele deve revisar no dia atual. A Exclamação ao lado do card aponta que ainda não foi feito. Assim que ele é completo um "check" aparece no lugar da exclamação.

 <img src="https://github.com/user-attachments/assets/017a5397-a008-489d-b620-371f45106b98" height="300px"/>

 <h2> 5 - Ranking</h2>
  Finalidade:
  
 <img src="https://github.com/user-attachments/assets/0c0a998a-a5ab-4b32-ad32-865cc4ba17ec" height="300px"/>


 <h2> 6 - Confuig </h2>
   Finalidade:

 <img src="https://github.com/user-attachments/assets/99047f80-d278-4028-833a-32bf54d8ec93" height="300px"/>

