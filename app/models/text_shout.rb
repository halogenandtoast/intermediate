class TextShout < ActiveRecord::Base
  has_one :shout, as: :content

  validates :body, presence: true
end
