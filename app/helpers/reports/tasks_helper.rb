module Reports::TasksHelper
  def reports_task_path(task, options = {})
    send "#{task.model_name.singular}_task_path", task, options
  end
end
