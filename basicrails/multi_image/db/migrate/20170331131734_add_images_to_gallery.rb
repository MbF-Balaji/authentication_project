 class AddImagesToGallery < ActiveRecord::Migration[5.0]
  def change
  	add_column :galleries, :images, :string, default: [].to_yaml
  end
end
