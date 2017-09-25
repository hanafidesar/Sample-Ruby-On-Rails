class Customer < ApplicationRecord
    has_many :tcustomerproduct 

    validates :name, presence: true
end
