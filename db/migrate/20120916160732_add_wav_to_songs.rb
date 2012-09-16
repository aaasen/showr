class AddWavToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :wav_url, :string
  end
end
