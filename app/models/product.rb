class Product < ApplicationRecord
   enum category: [:eletronicos, :vestuario, :alimentos, :outros]
    validates :category, presence: true
end
