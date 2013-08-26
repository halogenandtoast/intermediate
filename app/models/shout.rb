class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :content, polymorphic: true

  validates :content, presence: true
  validates_associated :content

  delegate :email, to: :user, prefix: true
end
