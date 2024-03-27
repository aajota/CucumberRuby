#language: pt

Funcionalidade: Catalogo de cafés
    Como um usuario do site, seu quero ver o catálogo de cafés na página principal
    Para que eu possa escolher e saber mais sobre os produtos disponíveis

Cenário: Ancessar o catálogo de cafés na página principal

    Quando acesso a página proncipal da Starbugs
    Então eu quero ver a lista de cafés disoníveis 

Cenário: Iniciar a compra de um café

    Dado que estou na página principal da Starbugs
        E que desejo comprar o café "Expresso Gelado"
        E que esse produto custa R$ 9.99
        E que o custo de entrega é de R$ 10.00
    Quando inicio a compra desse item
    Então devo ver a página de checkout com os detalhes do croduto
        E o valor total da compra deve ser de R$ 19.00  
        
Cenário: Café indisponível      
