class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :bike_name
      t.integer :bike_year
      t.string :owner_name
      t.string :city
      t.text :content
      t.text :image1
      t.text :image2

      t.timestamps
    end
  end
end
