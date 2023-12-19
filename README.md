# airflow
## Protótipo
![Screenshot_1](https://github.com/EduardoOPR/airflow-app/assets/67355426/c99d4d12-89e6-4da0-96a9-31d6c6d68798)
O protótipo pode ser acessado no link abaixo
https://www.figma.com/file/xptrJVINhr58sNnUCMdrms/Sistema-Embarcados?type=design&node-id=55-131&mode=design&t=0NWdWyjTkmCxc0At-0

## Organização do código (pasta Lib)
As telas já estão feitas, e já está sendo exibido nas telas os dados do banco. 

### back_commands
Contém os comandos de acesso que ligam ao banco de dados, por exemplo na imagem abaixo é possível ver a função getRequest, que faz um get de um json e converte para o modelo utilizado no aplicativo, as demais funções deverão ser implementadas (Uma para uptdate deve ser suficiente para o escopo atual do projeto).

![get](https://github.com/EduardoOPR/airflow-app/assets/67355426/c5ef077f-3539-4769-84e1-87dc390aac66)

### firebase
Comandos para o firebase, nela já está implementado o comando para login com o google, bastando apenas conectar com um novo firebase, pois o atual será desativado.
Para configurar novamente basta seguir o tutorial abaixo para fazer a ligação com o banco firebase a escolha: https://www.youtube.com/watch?v=FkFvQ0SaT1I

![Screenshot_1](https://github.com/EduardoOPR/airflow-app/assets/67355426/bcc183c6-ceed-41a0-93c0-002f559fabc3)

### models
Modelos formatados para facilitar o uso ao decorrer do aplicativo, o formato está de acordo com o que vêm do banco de dados, no caso, para as configurações do Ar condicionado. Também dentro da classe já existe uma parse, que converte um json para o formato do modelo.

![Screenshot_2](https://github.com/EduardoOPR/airflow-app/assets/67355426/9b029576-d6ac-447c-98de-00618189a0cc)

### themes
Temas de fontes que são utilizados ao decorrer do aplicativo, para todos é possível alterar o tamanho do texto e a cor, a fonte e o peso da fonte já estão predefinidos de acordo com o protótipo

![Screenshot_3](https://github.com/EduardoOPR/airflow-app/assets/67355426/5734b602-12f4-475f-b911-6a4c5641c0d7)


### views
![Screenshot_2](https://github.com/EduardoOPR/airflow-app/assets/67355426/6f11bb74-0186-41d0-a47a-b6fc4284b38f)
#### screens
Aqui ficam as telas do aplicativo, sendo elas:
- dashboard (falta implementar apenas o gráfico dinâmico, o pacote que encontrei que já consegue realizar isso é esse: https://pub.dev/packages/syncfusion_flutter_charts)
- login (As funções para realizar o login estão comentadas, existe o botão de se registrar porém visto o objetivo do aplicativo talvez ele não faça sentido, buscar saber se ele será necessário)
- splash (na splash será feito a checagem se o usuário já estava logado ou não, e dela que será feito o redirecionamento para a tela de login ou dashboard, as funções de checagem já estão implementadas nela)

#### widgets
Componentes que são utilizados nas telas, aqui basicamente é o local onde os diversos componentes ficam, isso foi feito para organizar e diminuir o código deixando ele mais entendível
