if @lesson.errors.messages.any?
  json.errors @lesson.errors.messages
else
  json.(@lesson, :id, :title, :body, :number, :description, :course_id, :created_at, :updated_at)
end
