class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :doctorNum
      t.string :address
      t.string :speciality
      t.string :name
      t.string :family
      t.string :gender
      t.string :phone

      t.timestamps null: false
    end
  end
end
