json.array!(@lessons) do |json, lesson|
  json.(lesson, :id, :title, :body, :number, :description, :course_id, :created_at, :updated_at)
end
