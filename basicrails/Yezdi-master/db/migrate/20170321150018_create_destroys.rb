class CreateDestroys < ActiveRecord::Migration[5.0]
  def change
    create_table :destroys do |t|
      t.string :contact
      t.string :name
      t.string :email
      t.string :country
      t.integer :phone
      t.text :message
      t.string :male

      t.timestamps
    end
  end
end
