require 'fez'
require 'rails'

module Fez
  class Railtie < Rails::Railtie
    railtie_name :fez

    rake_tasks do
      puts 'stat'
      load 'tasks/sweep.rake'
    end
  end
end
