class AddUidToSong < ActiveRecord::Migration
  def change
    add_column :songs, :parent_id, :string
  end
end
