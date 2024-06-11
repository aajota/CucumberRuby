

Dado('que iniciei a compra do item') do |table|
    product = table.rows_hash
    puts product

    @home.open
    @home.buy(product[:name])

end

Quando('aplico o seguinte cupom: {string}') do |coupom_code|
find('input[placeholder="Código do cupom"]').set(coupom_code)
    click_on 'Aplicar'

end

Então('o valor final da compra deve ser atualizado para {string}') do |string|
pending # Write code here that turns the phrase above into concrete actions
end