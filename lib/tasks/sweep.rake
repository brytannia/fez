require 'fez/runner'

namespace :fez do
  desc 'Run all new fez tasks'
  task :sweep do
    Fez::Runner.new.run
  end
end

