json.extract! task, :id, :title, :description, :status, :author_id, :executor_id, :project_id, :created_at, :updated_at
json.url task_url(task, format: :json)
