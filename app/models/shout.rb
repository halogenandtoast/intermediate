class Shout < ActiveRecord::Base
  belongs_to :user, touch: true
  belongs_to :content, polymorphic: true

  validates :content, presence: true
  validates_associated :content

  default_scope { order("created_at DESC") }

  delegate :email, to: :user, prefix: true

  def content
    super || NullContent.new
  end
end
