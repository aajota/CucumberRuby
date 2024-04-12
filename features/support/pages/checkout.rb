

class CheckoutPages

    def check_product_detalis(product)
        product_title = find('.item-details h1')
        expect(product_title.text).to eql @product[:name]
   
        sub_price  = find('.subtotal .sub-price')
        expect(sub_price.text).to eql @product[:price]
   
        delivery = find('.delivery-price')
        expect(delivery.text).to eql @product[:delivery]
    end
end