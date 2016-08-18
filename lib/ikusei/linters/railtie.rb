require "rails"
class Ikusei::Linters::Railtie < Rails::Railtie
  rake_tasks do
    load "ikusei/tasks/lint.rake"
  end
end
