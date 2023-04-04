# zup-web-robotframework
O projeto **zup-web-robotframework** é uma automação de testes web do site [Zup Innovation](https://www.zup.com.br/) utilizando as tecnologias Robot Framework e Python.

## Como usar
Para usar o projeto, basta clonar o repositório na sua máquina e abrir na sua IDE preferida.

No diretório [/tests](https://github.com/itau-corp/itau-nb3-modules-automacao-apis/tree/main/tests) encontra-se os cenários de testes da aplicação web, enquanto que o [/resources](https://github.com/itau-corp/itau-nb3-modules-automacao-apis/tree/main/resources) possui a declaração desses cenários.

Para executar o projeto, certifique-se de que tem baixado e configurado na sua máquina o Robot Framework, Python e a biblioteca SeleniumLibrary. Para mais informações, consulte a seção [Referências](https://github.com/tiagocbarbosa/zup-web-robotframework#Refer%C3%AAncias).

Abra o terminal e execute o comando ``robot -d results/ tests/``, a sua saída deverá ser algo parecida com isso:

````bash
==============================================================================
Tests
==============================================================================
Tests.Web Testing :: Essa su▒te testa o site da ZUP
==============================================================================
Caso de Teste 01 - Acesso ▒ home page :: Esse teste acessa a home ... | PASS |
------------------------------------------------------------------------------
Caso de Teste 02 - Acesso ▒ p▒gina Sobre                              | PASS |
------------------------------------------------------------------------------
Caso de Teste 03 - Acesso ▒ pagina Cultura                            | PASS |
------------------------------------------------------------------------------
Caso de Teste 04 - Acesso ▒ home page em ingl▒s                       | PASS |
------------------------------------------------------------------------------
Tests.Web Testing :: Essa su▒te testa o site da ZUP                   | PASS |
4 tests, 4 passed, 0 failed
==============================================================================
Tests                                                                 | PASS |
4 tests, 4 passed, 0 failed
==============================================================================
Output:  C:\Users\{user}\PycharmProjects\zup-web-robotframework\results\output.xml
Log:     C:\Users\{user}\PycharmProjects\zup-web-robotframework\results\log.html
Report:  C:\Users\{user}\PycharmProjects\zup-web-robotframework\results\report.html
````

O arquivo `/report.html` deverá ser criado no diretório [results/](https://github.com/tiagocbarbosa/zup-web-robotframework/tree/main/results) após a execução dos testes com o Robot Framework, e você poderá verificar o log de testes no relatório.

## Evoluções
- Criar os cenários de testes que validam o redirecionamento para as redes sociais da ZUP quando o usuário clica nos ícones dos sites.

## Tecnologias
- Robot Framework;
- Python.

## Referências
[Robot Framework](https://robotframework.org/)

[SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/)