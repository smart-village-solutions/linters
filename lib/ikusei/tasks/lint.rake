require "eslintrb/eslinttask"
require "yaml"


namespace :ikusei do
  desc "Run all linters requested by ikusei"
  task lint: [:rubocop, :eslint, :scss_lint] do
    $stderr.puts "lint everything"
  end


  desc "Run eslint with ikusei configuration"
  Eslintrb::EslintTask.new :eslint do |t|
    root = File.expand_path(File.join(__FILE__, '../../../..'))

    t.pattern = "app/assets/javascripts/**/*.js"
    t.options = YAML.load(File.read root + "/eslintrc")
  end

  desc "Run rubocop with ikusei configuration"
  task :rubocop do
    root = File.expand_path(File.join(__FILE__, '../../../..'))
    system("bundle exec rubocop -c #{root}/rubocop.yml")
  end

  desc "Run scss-lint with ikusei configuration"
  task :scss_lint do
    root = File.expand_path(File.join(__FILE__, '../../../..'))
    pattern = "app/assets/stylesheets"
    system("bundle exec scss-lint -c #{root}/scss-lint.yml #{pattern}")
  end
end
