json.array!(@courses) do |json, course|
  json.(course, :id, :title, :body, :description, :cost, :created_at, :updated_at, :user_id)
end
