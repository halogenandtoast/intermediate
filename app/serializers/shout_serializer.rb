class ShoutSerializer < ActiveModel::Serializer
  has_one :content, polymorphic: true
end
