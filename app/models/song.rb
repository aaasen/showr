class Song < ActiveRecord::Base
  belongs_to :user, :foreign_key => "user_uid"
  attr_accessible :url, :up_vote, :down_vote, :name, :description
end
