
***Settings***

Resource        base.robot

***Test Cases***

Entrando no site
    Open Browser                   ${url}     chrome      options=add_experimental_option('excludeSwitches', ['enable-logging'])
    Maximize Browser Window
    Go To                          ${url}
    Sleep                          7

Fazendo login
    Press Keys                     None    TAB     TAB     TAB      SPACE
    Sleep                          1
    Press Keys                     None    TAB     ENTER
    Sleep                          2

Entrando com email
    Input Text                     id:ap_email          ${email}
    Click Element                  id:continue
    Sleep                          1

Entrando com senha
    Input Text                     id:ap_password       ${senha}
    Click Element                  id:signInSubmit
    Sleep                          2

Procurando item
    Input Text                     css:input[id=twotabsearchtextbox]        capa de celular s20 fe
    Click Element                  id:nav-search-submit-button
    Sleep                          2

Selecionando item
    Page Should Contain Link       Capa Case Antishock E Impacto Novo Samsung Galaxy S20 Fe 5g
    Go To                          ${url}/Capa-Antishock-Impacto-Para-Galaxy/dp/B0886F9JG5/ref=sr_1_12?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1TV6G0Y55RKUR&keywords=capa+de+celular+s20+fe&qid=1650405339&sprefix=capa+de+celular+s20+fe%2Caps%2C335&sr=8-12

Adicionando ao carrinho
    Click Element                  id:add-to-cart-button

Fechando pedido
    Click Element                  Xpath://input[@class='a-button-input']

Adicionando cartão de crédito
    Page Should Contain            Adicionar um cartão de crédito
    Click Element                  Xpath://a[@class='a-link-emphasis pmts-add-cc-default-trigger-link']
    Sleep                          4

Preenchendo os dados do cartão
    Press Keys                     None        TAB           ${numero_cartao}
    Press Keys                     None        TAB           ${nome_cartao}
    Press Keys                     None        TAB           ${validade_mes}
    Press Keys                     None        TAB           ${validade_ano}
    Press Keys                     None        TAB           ${ccv_cartao}
    Press Keys                     None        TAB           TAB            TAB             TAB             ENTER
    Sleep                          5

Confirmando esse método de pagamento
    Page Should Contain            Usar este método de pagamento
    Click Element                  Xpath://span[@data-action='a-tooltip-button-blocker']
    Sleep                          5

Confirmando esse endereço de entrega
    Page Should Contain            Utilize este endereço
    Click Element                  Xpath://span[@data-action='buy-button-as-primary-action']
    Sleep                          4

Finalizando pedido
    Page Should Contain            Finalizar pedido
    Click Element                  Xpath://span[@id='submitOrderButtonId']

Pedido feito
    Page Should Contain            Pedido feito, obrigado!
    Sleep                          5
