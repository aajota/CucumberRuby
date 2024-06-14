

Dado('que iniciei a compra do item') do |table|
    product = table.rows_hash
    puts product

    @home.open
    @home.buy(product[:name])

end

Quando('aplico o seguinte cupom: {string}') do |coupom_code|
    @checkout.set_discount(coupom_code)

end

Então('o valor final da compra deve ser atualizado para {string}') do |final_price|
    @checkout.assert_total_price(final_price)
end