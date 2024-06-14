#language: pt

Funcionalidade: Uso de Cupons no checkout
    Como um usuário do site de venda de cafés, Eu quero poder aplicar cupons de desconto na página de checkout, 
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra.

Contexto: 

Dado que iniciei a compra do item
    | name     | Café com Leite|
    | price    | R$ 19,99      |
    | delivery | R$ 10,00      |
    | total    | R$ 29,99      |

Cenário: Aplicar Desconto de 20%

Quando aplico o seguinte cupom: "MEUCAFE"
Então o valor final da compra deve ser atualizado para "R$ 25,99"

Cenário: Cupom Expirado

Quando aplico o seguinte cupom: "PROMO20"
Então devo ver a seguinte notificação que o "Cupom expirado!"
    E o valir final da compra deve permanecer o mesmo

Cenário: Cupom Inválido

Quando aplico o seguinte cupom: "PROMO100"
Então devo ver a seguinte notificação que o "Cupom inválido!"
    E o valir final da compra deve permanecer o mesmo
  

