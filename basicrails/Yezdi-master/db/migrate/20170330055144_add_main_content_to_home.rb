class AddMainContentToHome < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :main_content, :text
    add_column :homes, :cover_image, :string

  end
end
