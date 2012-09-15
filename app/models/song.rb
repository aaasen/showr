class Song < ActiveRecord::Base
  belongs_to :user
  attr_accessible :url
end
