require "rails"
class Ikusei::Linters::Railtie < Rails::Railtie
  rake_tasks do
    load "lib/ikusei/tasks/lint.rake"
  end
end
