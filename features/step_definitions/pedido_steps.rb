Dado('que inciei a compra do item {string}') do |product_name|
    @home.buy(product_name)
  end
  
  Quando('faço a busca do seguinte CEP: {string}') do |zipcode|
    @checkout.find_zipcode(zipcode)
  end
  
  Quando('informo os demais dados do endereço:') do |table|
    @checkout.fill_address(table.rows_hash)
  end
  
  Quando('escolho a forma de pagamento {string}') do |payment_type|

    find('label div', text: payment_type.upcase).click
   
  end
  
  Quando('por fim finalizo a compra') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('sou redirecionado para a página de confirmmação de pedido') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então('deve ser informado um prazo de entrega entre {int} a {int} segundos') do |int, int2|
  # Então('deve ser informado um prazo de entrega entre {int} a {float} segundos') do |int, float|
  # Então('deve ser informado um prazo de entrega entre {float} a {int} segundos') do |float, int|
  # Então('deve ser informado um prazo de entrega entre {float} a {float} segundos') do |float, float2|
    pending # Write code here that turns the phrase above into concrete actions
  end