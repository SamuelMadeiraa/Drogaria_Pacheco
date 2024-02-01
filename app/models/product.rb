class Product < ApplicationRecord

    validates :category, presence: true
end
