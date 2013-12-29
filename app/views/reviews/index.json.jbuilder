json.array!(@reviews) do |json, review|
  json.(review, :id, :text, :rate, :created_at, :updated_at, :user_id, :course_id)
end
