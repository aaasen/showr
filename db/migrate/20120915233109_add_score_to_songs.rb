class AddScoreToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :up_vote, :integer
    add_column :songs, :down_vote, :integer
  end
end
