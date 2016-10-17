require 'fez'
require 'rails'

module Fez
  class Railtie < Rails::Railtie
    railtie_name :fez

    rake_tasks do
      load 'tasks/sweep.rake'
    end

    initializer "load_models" do
      load "fez/models/sweep.rb"
    end
  end
end
