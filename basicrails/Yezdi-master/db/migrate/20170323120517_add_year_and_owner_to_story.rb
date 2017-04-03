class AddYearAndOwnerToStory < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :year, :integer
    add_column :stories, :owner, :string
  end
end
