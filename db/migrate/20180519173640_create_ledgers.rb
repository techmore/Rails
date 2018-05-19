class CreateLedgers < ActiveRecord::Migration[5.2]
  def change
    create_table :ledgers do |t|
      t.timestamp :date
      t.string :payer
      t.integer :check_details
      t.string :department
      t.float :amount
      t.string :cobra
      t.text :notes

      t.timestamps
    end
  end
end
