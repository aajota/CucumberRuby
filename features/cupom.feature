#language: pt

Funcionalidade: Uso de Cupons no checkout
    Como um usuário do site de venda de cafés, Eu quero poder aplicar cupons de desconto na página de checkout, 
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com a minha experiência de compra.

Cenário: Aplicar Desconto de 20%

    O usuário deve ser capaz de aplicar um cupom de 20% de desconto válido no checkout.
    O desconto deve ser aplicado apenas ao valor do produto e o valor final deve ser recalculado corretamente.

Dado que estou na página de checkout
    E o item que está no meu carrinho é o café com leite no valor de R$ 19,00
    E que a taxa de entrega é de R$ 10,00
    E o valor total é de R$ 29,00
    E tenho um cumpom com 20% de desconto
Quando aplico esse cumpo de desconto
Então o desconto de 20%deve ser aplicado no valor do café com leite
    E o valor final da compra deve ser atualizado para R$ 25,99

Cenário: Cupom Expirado
    Ao tentar usar um cupom expirado, o usuário deve receber uma notificação informando que o cupom está expirado.
    Nenhum desconto deve ser aplicado e o valor total da compra deve permanecer inalterado.
Dado que estou na página de checkout
    E o item que está no meu carrinho é o café com leite no valor de R$ 19,00
    E que a taxa de entrega é de R$ 10,00
    E o valor total é de R$ 29,00
