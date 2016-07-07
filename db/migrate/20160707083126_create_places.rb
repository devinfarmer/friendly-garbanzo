class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :address4
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone1
      t.string :phone2
      t.string :phone3
      t.string :phone4
      t.string :manager
      t.text :comments

      t.timestamps null: false
    end
  end
end
