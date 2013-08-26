class User < ActiveRecord::Base
  include Clearance::User
  has_many :shouts, dependent: :destroy
end
