require 'fez'
require 'rails'

module Fez
  class Railtie < Rails::Railtie
    railtie_name :fez

    rake_tasks do
      load 'tasks/fez_tasks.rake'
    end
  end
end
