require 'fez/runner'

namespace :fez do
  desc 'Run all new fez tasks'
  task :sweep do
    puts 'Running fez:sweep'
    tasks = Fez::Runner.new.run
    n = 1
    tasks.each do |task|
      puts "run task N #{n}"
      # binding.pry
      Rake::Task[task].invoke
      n += 1
    end
    puts 'finishing'
  end
end

