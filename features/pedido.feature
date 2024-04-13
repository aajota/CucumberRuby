#language: pt

Funcionalidade: Pedidos

    Como um usuario do starbugs, eu quero selecionar e comprar cafés 
    Para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega

    Cenário: compra bem sucedida

        Dado que estou na página principal da Starbugs
            E que inciei a compra do item "Expresso Tradicional"
        Quando faço a busca do seguinte CEP: "06535110"
            E informo os demais dados do endereço:
                |Numero|56|
                |Complemento|Apto 99|
            E escolho a forma de pagamento "Cartão de Débito"
            E por fim finalizo a compra
        Então sou redirecionado para a página de confirmmação de pedido
            E deve ser informado um prazo de entrega entre 20 a 30 segundos

