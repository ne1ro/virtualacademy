if @post.errors.messages.any?
  json.errors @post.errors.messages
else
  json.(@post, :id, :title, :body, :published, :created_at, :updated_at)
end
