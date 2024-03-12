class Product < ApplicationRecord
    belongs_to :category
    belongs_to :cupom, optional: true

    def apply_discount_if_price_over_100
      if price > 100
        self.price -= self.price * 0.15
      end
    end
end