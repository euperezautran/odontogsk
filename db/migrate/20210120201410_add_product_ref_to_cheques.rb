class AddProductRefToCheques < ActiveRecord::Migration[6.0]
  def change
    add_reference :cheques, :product, null: false, foreign_key: true
  end
end
