class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :user

  has_many :cheques, dependent: :destroy
end
