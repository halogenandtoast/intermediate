class UserSerializer < ActiveModel::Serializer
  attributes :email, :url
  has_many :shouts

  def url
    user_url(object)
  end
end
