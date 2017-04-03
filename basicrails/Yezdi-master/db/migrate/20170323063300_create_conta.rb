class CreateConta < ActiveRecord::Migration[5.0]
  def change
    create_table :conta do |t|
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
