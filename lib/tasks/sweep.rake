require 'fez/runner'

namespace :fez do
  desc 'Run all new fez tasks'
  task :sweep do
    puts 'I am a rake task'
    tasks = Fez::Runner.new.run
    tasks.each do |task|
      puts 'ha'
      Rake::Task[task].invoke
    end
  end
end

