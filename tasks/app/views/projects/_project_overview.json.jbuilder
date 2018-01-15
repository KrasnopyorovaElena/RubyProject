json.extract! project, :id, :name, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)
json.set! :tasks_count, project.tasks.count
