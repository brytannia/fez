module Fez
  class Sweep  < ActiveRecord::Base
    def self.current_version
      Sweep.last.version
    end
  end
end
