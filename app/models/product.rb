class Product < ApplicationRecord
    belongs_to :category
    belongs_to :cupom, optional: true

    def apply_discount_if_price_over_100
      if price > 100
        if cupom.present?
          # Se um cupom estiver presente, aplicar o desconto do cupom
          self.price -= cupom.discount
        else
          # Caso contrário, aplicar desconto de 15%
          self.price -= self.price * 0.15
        end
      end 
    end



    def has_discount?
      discount.present?
    end


    def discount_available?
      discount_available
    end

    def pode_receber_desconto?

      self.desconto_disponivel?
    end
end