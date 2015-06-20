class CreateUserReserves < ActiveRecord::Migration
  def change
    create_table :user_reserves do |t|
      t.datetime :date
      t.integer :doctor_id
      t.integer :reserve_id
      t.integer :user_id
      t.integer :turn

      t.timestamps null: false
    end
  end
end
