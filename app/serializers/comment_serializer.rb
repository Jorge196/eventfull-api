class CommentSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :created_time
end
