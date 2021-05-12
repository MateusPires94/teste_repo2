# data-science-template
Repositório template para modelos de Data Science


## Como configurar:

Crie um novo repo a partir do template:
  - Clique em [Use this template](https://github.com/PicPay/data-science-template/generate);
  - Nomeie o repositório do projeto;
  - Clique em **Create repository from template**.


## Estrutura:

### Branches

O repositório possui uma branch **main** que é responsável pelo envio de pushs para QA e Prod. Recomendamos a criação de uma branch de desenvolvimento, que necessariamente deve-se chamar **dev**, para que os testes unitários sejam executados. O gitflow é disparado a partir das seguintes ações:
- Push na branch **dev**:
  - Execução dos testes unitários.
  
Envio para QA:
- Push na branch **main**:
  - Execução dos testes unitários;
  - Push no repo de Data Science na branch de QA.
 
Envio para produção:
- Subida de **tag** na branch **main**:
  - Execução dos testes unitários;
  - Criação de uma branch do modelo no repo de Data Science. A Pull Request deve ser aberta manualmente.


Para habilitar a execução dos fluxos, é necessário ativar o drone:
  - Logue na VPN do Picpay;
  - Acesse o [Drone](https://drone.ppay.me);
  - Na barra de pesquisa, selecione o repo criado anteriormente;
  - Em **SETTINGS** clique em **ACTIVATE REPOSITORY** para ativar a sincronização.

### Diretórios

- tests/

  Os scripts de testes unitários devem ser inseridos nessa pasta. O arquivo **test_requirements.txt** deve conter as bibliotecas necessárias para executá-los. Os arquivos e suas funções devem começar com a nomenclatura **test_**.
  
- models/

  Deve conter somente a pasta do modelo em questão.
  
- metadata/ 

  Deve conter somente os arquivos de metadados do projeto.
  
  
### Arquivo makefile:

   Ao executar o comando *make template-sync*, o repositório do projeto será sincronizado com o repositório do template. O comando pode ser necessário caso o template passe por alguma atualização. Obs: o README.md e os diretórios dos testes, do modelo e dos metadados serão preservados.  
