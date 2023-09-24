class CreateUserActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :user_activities do |t|
      t.string :name
      t.integer :users
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
