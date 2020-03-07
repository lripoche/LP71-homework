class Burger < ApplicationRecord

    #Call Openfoodfacts API for product's nutriment
    def nutriments
        code = self.code
        product = Openfoodfacts::Product.get(code, locale: 'fr')
        return product.nutriments.to_hash
    end
end
