module Fez
  class Runner
    def initialize
      @@name ||= 0
      @@name += 1
    end

    def run
      tasks = Dir["./lib/tasks/fez/*.rake"].map do |filename|
        file = filename[/fez\/\d*_(.*?).rake/, 1]
        "fez:#{file}"
      end
      tasks
    end
  end
end

