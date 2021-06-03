class CommentSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :description, :created_at, :post_id
end
