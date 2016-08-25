require 'rake'
load 'Rakefile'

module Fez
  class Runner
    def initialize
      @@name ||= 1
      @@name += 1
      puts "hi #{@@name}"
    end

    def run
      tasks = Dir["./lib/tasks/fez/*.rake"].map do |filename|
        file = filename[/fez\/\d*_(.*?).rake/, 1]
        "fez:#{file}"
      end
      puts tasks.size
      tasks
    end
  end
end

