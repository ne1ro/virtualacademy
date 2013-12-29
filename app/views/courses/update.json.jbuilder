if @course.errors.messages.any?
  json.errors @course.errors.messages
else
  json.(@course, :id, :title, :body, :description, :cost, :user_id, :created_at, :updated_at)
end
