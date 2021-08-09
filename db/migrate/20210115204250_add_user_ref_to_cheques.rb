class AddUserRefToCheques < ActiveRecord::Migration[6.0]
  def change
    add_reference :cheques, :user, null: false, foreign_key: true
  end
end
