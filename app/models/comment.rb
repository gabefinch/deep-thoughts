class Comment < ActiveRecord::Base
  belongs_to :entry
  belongs_to :user
  validates :body, :presence => true
end
