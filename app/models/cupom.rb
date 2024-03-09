class Cupom < ApplicationRecord
    has_many :products, class_name: 'Product'
end
