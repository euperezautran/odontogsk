class Product < ApplicationRecord
  belongs_to :brand

  has_many :cheques, dependent: :destroy
end
