require 'rake'
load 'Rakefile'

class FezRunner
  def initialize

  end

  def run
    tasks = Dir["./lib/tasks/fez/*.rake"].map do |filename|
      file = filename[/fez\/\d*_(.*?).rake/, 1]
      "fez:#{file}"
    end

    tasks.each do |task|
      Rake::Task[task].execute
    end
  end
end
