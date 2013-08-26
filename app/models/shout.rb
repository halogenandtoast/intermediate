class Shout < ActiveRecord::Base
  belongs_to :user
  delegate :email, to: :user, prefix: true
  validates :body, presence: true
end
