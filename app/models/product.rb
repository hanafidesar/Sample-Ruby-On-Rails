class Product < ApplicationRecord
    has_many :tsupplierproduct 

    validates :name, presence: true
end
