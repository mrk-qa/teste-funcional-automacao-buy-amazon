
***Settings***

Library     SeleniumLibrary

***Variables***

${url}              https://amazon.com.br
${email}            #email aqui
${senha}            #senha aqui
${numero_cartao}    #número do cartão de crédito aqui
${nome_cartao}      #nome do cartão de crédito aqui
${validade_mes}     #validade do mês aqui
${validade_ano}     #validade do ano aqui
${ccv_cartao}       #código cvv do cartão aqui

***Keywords***

Nova sessão
    Open Browser
    Maximize Browser Window

Encerra sessão
    Capture Page Screenshot
    Close Browser