if @review.errors.messages.any?
  json.errors @review.errors.messages
else
  json.(@review, :id, :text, :rate, :created_at, :updated_at, :user_id, :course_id)
end
