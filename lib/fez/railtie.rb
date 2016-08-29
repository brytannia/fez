# require 'fez'
require 'rails'
require 'fez/models/sweep'

module Fez
  class Railtie < Rails::Railtie
    railtie_name :fez

    rake_tasks do
      load 'tasks/sweep.rake'
    end
  end
end
