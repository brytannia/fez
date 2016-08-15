namespace :fez do
  desc 'Initialize Fez in your project'
  task init: :environment do
    # rails g migration(CreateFezSweep version:string)
    Dir.mkdir('./lib/tasks/fez')
  end
end
