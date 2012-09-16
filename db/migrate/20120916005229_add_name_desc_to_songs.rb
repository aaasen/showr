class AddNameDescToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :name, :string
    add_column :songs, :description, :text
  end
end
