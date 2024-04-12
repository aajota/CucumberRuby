Quando('acesso a página proncipal da Starbugs') do
  @home.open
end
  
  Então('eu quero ver a lista de cafés disoníveis') do
     expect(@home.coffee_list.size).to be > 0
end
  
Dado('que estou na página principal da Starbugs') do
     @home.open
   end

Dado('que desejo comprar o seguinte produto:') do |table|
    @product = table.rows_hash

  end
   
Quando('inicio a compra desse item') do
  @home.buy(@product[:name])
   end
   
Então('devo ver a página de checkout com os detalhes do croduto') do
    @checkout.assert_product_detalis(product)
   end
   
Então('o valor total da compra deve ser de {string}') do |total_price|
    @checkout.assert_product_detalis(total_price)

   end
   
Então('devo ver um popup informando que o produto está indisponível') do      
     popup = find('.swal2-html-container')
     expect(popup.text).to eql 'Produto indisponível'
   end