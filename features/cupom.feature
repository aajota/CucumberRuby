#language: pt

Funcionalidade: Uso de Cupons no checkout
    Como um usuário do site de venda de cafés, Eu quero poder aplicar cupons de desconto na página de checkout, 
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra.
@temp
Cenário: Aplicar Desconto de 20%

Dado que iniciei a compra do item
    | name     | Café com Leite|
    | price    | R$ 19,99      |
    | delivery | R$ 10,00      |
    | total    | R$ 29,99      |

Quando aplico o seguinte cupom: "MEUCAFE"
Então o valor final da compra deve ser atualizado para "R$ 25,99"

Cenário: Cupom Expirado
    
Dado que estou na página de checkout
    E o item que está no meu carrinho é o café com leite no valor de R$ 19,00
    E que a taxa de entrega é de R$ 10,00
    E o valor total é de R$ 29,00
    E tenho um cupom que está expirado "PROMO20"
Quando aplico esse cupom de desconto
Então devo ver a seguinte notificação que o "cumpor expirado!"

Cenário: Cupom Inválido
  
Dado que estou na página de checkout
    E o item que está no meu carrinho é o café com leite no valor de R$ 19,00
    E que a taxa de entrega é de R$ 10,00
    E o valor total é de R$ 29,00
    E tenho um cupom com o código inválido "PROMO100"
Quando aplico esse cupom 
Então devo ver a seguinte notificação que o "cumpor inválido!"
