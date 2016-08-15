class FezGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def generate_task
    timestamp = Time.now.utc.strftime "%Y%m%d%H%M"
    copy_file 'task.rake', "lib/tasks/fez/#{timestamp}_#{name}.rake"
    gsub_file "lib/tasks/fez/#{timestamp}_#{name}.rake", 'task_name', name
  end
end
