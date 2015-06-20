class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :family
      t.string :gender
      t.string :phone
      t.string :insuranceNumber
      t.string :bloodType
      t.string :records

      t.timestamps null: false
    end
  end
end
