class Song < ActiveRecord::Base
  belongs_to :user, :foreign_key => "user_uid"
  attr_accessible :url
end
