require 'fez/runner'

namespace :fez do
  desc 'Run all new fez tasks'
  task :sweep do
    Fez::Runner.new.run
    puts "Current_version: #{Fez::Sweep.current_version}"
  end
end

