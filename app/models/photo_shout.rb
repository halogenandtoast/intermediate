class PhotoShout < ActiveRecord::Base
  has_one :shout, as: :content
  has_attached_file :image
end
