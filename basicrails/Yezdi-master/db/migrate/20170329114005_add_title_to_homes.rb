class AddTitleToHomes < ActiveRecord::Migration[5.0]
  def change
  	    add_column :homes, :title, :string, :limit => 10

  	    change_column :homes, :content, :string, :limit => 20

  end
end
