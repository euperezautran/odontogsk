class Product < ApplicationRecord
  belongs_to :brand
  belong_to :user
  has_many :cheques, dependent: :destroy
end
