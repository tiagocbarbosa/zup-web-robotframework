*** Settings ***
Documentation    Essa suíte testa o site da ZUP
Resource    ../resources/web_testing.resource
Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Acesso à home page
    [Documentation]    Esse teste acessa a home page da ZUP e verifica
    ...                os principais componentes da página
    Acessar a página da ZUP
    Verificar a URL da home page
    Verificar se aparece a frase "Modernize e evolua seu negócio com a Zup"

Caso de Teste 02 - Acesso à página Sobre
    Acessar a página da ZUP
    Verificar se aparece a frase "Modernize e evolua seu negócio com a Zup"
    Clicar no menu Sobre
    Verificar a URL da página Sobre
    Verificar se aparece a frase "Nós criamos tecnologia!"

Caso de Teste 03 - Acesso à pagina Cultura
    Acessar a página da ZUP
    Verificar se aparece a frase "Modernize e evolua seu negócio com a Zup"
    Clicar no menu Cultura
    Verificar a URL da página Cultura
    Verificar se aparece a frase "Cultura Zup"

Caso de Teste 04 - Acesso à home page em inglês
    Acessar a página da ZUP
    Verificar se aparece a frase "Modernize e evolua seu negócio com a Zup"
    Clicar no botão de tradução para o Inglês
    Verificar se aparece a frase "Sharpen up your business and evolve with Zup"

#Caso de Teste 05 - Acesso ao YouTube da ZUP
#    Acessar a página da ZUP
#    Verificar se aparece a frase "Modernize e evolua seu negócio com a Zup"
#    Clicar no item do YouTube
#    Verificar a URL da página YouTube

#Caso de Teste 05 - Redirecionamento ao LinkedIn da ZUP
#    Acessar a página da ZUP
#    Verificar se aparece a frase "Modernize e evolua seu negócio com a Zup"
#    Clicar no ícone do LinkedIn