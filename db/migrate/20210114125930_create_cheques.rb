class CreateCheques < ActiveRecord::Migration[6.0]
  def change
    create_table :cheques do |t|
      t.integer :numero

      t.timestamps
    end
  end
end
