class FezInitGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def init_fez
    generate 'migration', 'CreateFezSweep version:string'
    rake 'db:migrate'
    git add: '.'
  end
end
