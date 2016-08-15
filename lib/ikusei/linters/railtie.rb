require 'rails'
module Ikusei::Linters
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'ikusei/tasks/lint.rake'
    end
  end
end
