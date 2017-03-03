json.id task.id
json.status task.state
json.download_url task.url
json.url polymorphic_url(task, format: :json)
