class Product < ApplicationRecord
    belongs_to :category
    belongs_to :cupom, optional: true
end