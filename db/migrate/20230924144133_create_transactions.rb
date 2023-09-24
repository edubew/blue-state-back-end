class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :username
      t.string :email
      t.decimal :amount, precision: 8, scale: 2
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
