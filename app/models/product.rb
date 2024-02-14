class Product < ApplicationRecord
    belongs_to :categoria
    validates :category, presence: true
end
