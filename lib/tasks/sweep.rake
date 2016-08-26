require 'fez/runner'

namespace :fez do
  desc 'Run all new fez tasks'
  task :sweep do
    tasks = Fez::Runner.new.run
    tasks.each do |task|
      Rake::Task[task].invoke
    end
  end
end

