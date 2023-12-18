# airflow
## Protótipo
![Screenshot_1](https://github.com/EduardoOPR/airflow-app/assets/67355426/c99d4d12-89e6-4da0-96a9-31d6c6d68798)
O protótipo pode ser acessado no link abaixo
https://www.figma.com/file/xptrJVINhr58sNnUCMdrms/Sistema-Embarcados?type=design&node-id=55-131&mode=design&t=0NWdWyjTkmCxc0At-0

## Organização da pasta Lib
As telas já estão feitas, e já está sendo exibido nas telas os dados do banco. 

### back_commands
Contém os comandos de acesso com o banco de dados, por exemplo na imagem abaixo é possível ver a função get, demais funções deverão ser implementadas, ou essa mesma alterada em caso de mudança do banco de dados
![get](https://github.com/EduardoOPR/airflow-app/assets/67355426/c5ef077f-3539-4769-84e1-87dc390aac66)

### firebase
Comandos para o firebase, nela já está feito o comando para login com o google, bastando apenas conectar com um novo firebase, pois o atual será desativado.
Para configurar novamente basta seguir o tutorial a baixo para fazer a ligação com o banco firebase a escolha: https://www.youtube.com/watch?v=FkFvQ0SaT1I

### models
Modelos formatados para facilitar o uso ao decorrer do aplicativo, o formato está de acordo com o que vêm do banco de dados, no caso para as configurações do Ar condicionado

### themes
Temas de fontes que são utilizados ao decorrer do aplicativo

### views
![Screenshot_2](https://github.com/EduardoOPR/airflow-app/assets/67355426/6f11bb74-0186-41d0-a47a-b6fc4284b38f)
#### screens
Aqui ficam as telas do aplicativo, sendo elas:
- dashboard (falta implementar apenas o gráfico dinâmico, o pacote que encontrei que já consegue realizar isso é esse: https://pub.dev/packages/syncfusion_flutter_charts)
- login
- splash (na splash será feito a checagem se o usuário já estava logado ou não, e dela que será feito o redirecionamento para a tela de login ou dashboard, as funções de checagem já estão implementadas nela)

#### widgets
Componentes que são utilizados nas telas
