module Fez
  class Runner
    attr_reader :version

    def initialize
      @version = 1
    end

    def run
      tasks.each do |task|
        Rake::Task[task].invoke
      end
    end

    def tasks
      Dir["./lib/tasks/fez/*.rake"].map do |filename|
        file = filename[/fez\/\d*_(.*?).rake/, 1]
        "fez:#{file}"
      end
    end
  end
end

