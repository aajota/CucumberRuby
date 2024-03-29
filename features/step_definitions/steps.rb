Quando('acesso a página proncipal da Starbugs') do
     visit 'https://starbugs.vercel.app/'
end
  
  Então('eu quero ver a lista de cafés disoníveis') do
     products = all('.coffee-item')
     expect(products.size).to be > 0
end
  
Dado('que estou na página principal da Starbugs') do

   end
   
   Dado('que desejo comprar o café {string}') do |string|

   end
   
   Dado('que esse produto custa R$ {float}') do |float|

   end
   
   Dado('que o custo de entrega é de R$ {float}') do |float|

   end
   
   Quando('inicio a compra desse item') do

   end
   
   Então('devo ver a página de checkout com os detalhes do croduto') do

   end
   
   Então('o valor total da compra deve ser de R$ {float}') do |float|

   end
   
   Então('devo ver um popup informando que o produto está indisponível') do      
     sexta feira santa

   end