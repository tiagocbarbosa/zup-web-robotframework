*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***
${URL}  https://www.zup.com.br
${HEADER_HOME}   //h2[@class='elementor-heading-title elementor-size-default'][contains(.,'Modernizee evoluaseu negóciocom a Zup')]
${MENU_SOBRE}   //html[1]/body[1]/div[1]/section[1]/div[2]/div[2]/div[1]/div[4]/div[1]/nav[1]/ul[1]/li[1]/a[1]
${HEADER_SOBRE}     //h1[@class='elementor-heading-title elementor-size-default'][contains(.,'Nós criamos tecnologia!')]
${MENU_CULTURA}     //html[1]/body[1]/div[1]/section[1]/div[2]/div[2]/div[1]/div[4]/div[1]/nav[1]/ul[1]/li[2]/a[1]
${HEADER_CULTURA}    //h1[@class='elementor-heading-title elementor-size-default'][contains(.,'Cultura Zup')]
${BUTTON_EN}    //html/body/div[1]/section[1]/div[2]/div[2]/div/div[2]/div/a
${HEADER_PRINCIPAL_ENG}     //h2[@class='elementor-heading-title elementor-size-default'][contains(.,'Sharpen up your business and evolve with Zup')]
${ITEM_YOUTUBE}     //a[contains(.,'Acesse nosso Youtube ➔')]

${ICON_LINKEDIN}    //span[@class='elementor-grid-item'][contains(.,'Linkedin')]

*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome

Fechar o navegador
    Close Browser

Execute keyword até dar sucesso
    [Arguments]     ${KW}   @{KWARGS}
    Wait Until Keyword Succeeds    10s    1s    ${KW}   @{KWARGS}

Acessar a página da ZUP
    Go To   ${URL}
    Maximize Browser Window

Verificar a URL da home page
    Location Should Be    https://www.zup.com.br/

Verificar se aparece a frase "Modernize e evolua seu negócio com a Zup"
    Wait Until Element Is Visible    ${HEADER_HOME}

Clicar no menu Sobre
    Click Element    ${MENU_SOBRE}

Verificar a URL da página Sobre
    Location Should Be  https://www.zup.com.br/sobre

Verificar se aparece a frase "Nós criamos tecnologia!"
    Wait Until Element Is Visible    ${HEADER_SOBRE}

Clicar no menu Cultura
    Click Element    ${MENU_CULTURA}

Verificar a URL da página Cultura
    Location Should Be  https://www.zup.com.br/cultura

Verificar se aparece a frase "Cultura Zup"
    Wait Until Element Is Visible    ${HEADER_CULTURA}

Clicar no botão de tradução para o Inglês
    Click Element    ${BUTTON_EN}

Verificar se aparece a frase "Sharpen up your business and evolve with Zup"
    Wait Until Element Is Visible    ${HEADER_PRINCIPAL_ENG}

#Clicar no item do YouTube
#    Wait Until Element Is Visible    ${ITEM_YOUTUBE}
#    Wait Until Element Is Enabled    ${ITEM_YOUTUBE}
#    Click Element    ${ITEM_YOUTUBE}
#
#Verificar a URL da página YouTube
#    Location Should Be  https://m.youtube.com/channel/UCJWZyJ-36yNscqnnHiwjkhQ

#Clicar no ícone do LinkedIn
#    Click Element    //html[1]/body[1]/div[1]/section[1]/div[2]/div[2]/div[1]/div[4]/div[1]/nav[1]/ul[1]/li[6]/a[1]
#    Wait Until Element Is Visible    //h2[@class='elementor-heading-title elementor-size-default'][contains(.,'Fale conosco')]
#
#    Wait Until Element Is Visible    //html[1]/body[1]/div[2]/section[3]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/span[2]
#    Execute keyword até dar sucesso     Click Element   //html[1]/body[1]/div[2]/section[3]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/span[2]
#
#    Sleep    8s
#    Wait Until Element Is Visible    ${ICON_LINKEDIN}
#    Scroll Element Into View    ${ICON_LINKEDIN}
#    Click Element    ${ICON_LINKEDIN}
#    Sleep    8s