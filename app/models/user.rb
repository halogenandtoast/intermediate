class User < ActiveRecord::Base
  include Clearance::User
  include Following
  has_many :shouts, dependent: :destroy
end
