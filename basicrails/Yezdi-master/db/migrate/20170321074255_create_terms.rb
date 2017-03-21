class CreateTerms < ActiveRecord::Migration[5.0]
  def change
    create_table :terms do |t|
      t.string :title
      t.text :terms_and_conditions

      t.timestamps
    end
  end
end
