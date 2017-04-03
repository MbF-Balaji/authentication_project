class AddPaperclipToPost < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :homes, :image

  end
end
