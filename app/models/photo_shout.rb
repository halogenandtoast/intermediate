class PhotoShout < ActiveRecord::Base
  has_one :shout, as: :content
  has_attached_file :image
  validates :image, attachment_presence: true
end
