class Linter::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/linters.rake'
  end
end