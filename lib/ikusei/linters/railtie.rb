module Ikusei
  if defined? Rails::Railtie
    require "rails"
    class Railtie < Rails::Railtie
      rake_tasks do
        load "ikusei/tasks/lint.rake"
      end
    end
  end
end