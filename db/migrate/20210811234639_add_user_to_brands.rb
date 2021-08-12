class AddUserToBrands < ActiveRecord::Migration[6.0]
  def change
    add_reference :brands, :user, index: true, foreign_key: true
  end
end
