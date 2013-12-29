if @lesson.errors.messages.any?
  json.errors @lesson.errors.messages
else
  json.(@lesson, :id, :title, :body, :number, :lesson_id)
end
