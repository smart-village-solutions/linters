namespace :linters do
  desc "Install all linter files"
  task install: [:rubocop, :eslint, :scss_lint] do
    $stderr.puts "added .rubocop.yml, .eslintrc, .scss-lint.yml"
  end

  desc "Copy rubocop.yml file to current Application folder"
  task :rubocop do
    source = File.join(File.expand_path(File.dirname(__FILE__)), "..", "..", "rubocop.yml")
    target = File.join(Rails.root, ".rubocop.yml")
    FileUtils.cp source, target
  end

  desc "Copy eslintrc file to current Application folder"
  task :eslint do
    source = File.join(File.expand_path(File.dirname(__FILE__)), "..", "..", "eslintrc")
    target = File.join(Rails.root, ".eslintrc")
    FileUtils.cp source, target
  end

  desc "Copy scss-lint.yml file to current Application folder"
  task :scss_lint do
    source = File.join(File.expand_path(File.dirname(__FILE__)), "..", "..", "scss-lint.yml")
    target = File.join(Rails.root, ".scss-lint.yml")
    FileUtils.cp source, target
  end
end