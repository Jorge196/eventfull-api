class PostSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :picture_url
  has_many :comments
end
