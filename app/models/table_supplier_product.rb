class TableSupplierProduct < ApplicationRecord
  belongs_to :supplier
  belongs_to :product
end
