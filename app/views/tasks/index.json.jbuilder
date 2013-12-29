json.array!(@tasks) do |json, task|
  json.(task, :id, :title, :body, :number, :lesson_id)
end
