class AddPaperclipToHome < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :homes, :covers

  end
end
