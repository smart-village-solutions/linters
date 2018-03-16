# Linters

[![Code Climate](https://codeclimate.com/repos/57d18afa46cfc50aa1000c33/badges/903cfe94e756c25b5e38/gpa.svg)](https://codeclimate.com/repos/57d18afa46cfc50aa1000c33/feed)

This are our configuration files for [scss_lint](https://github.com/brigade/scss-lint), [Rubocop](https://github.com/bbatsov/rubocop) and [ESLint](http://eslint.org/).
If you want to work on project's together with ikusei, please take the time to set up your environment to use these configuration files.

If you download them, please make sure, to rename them and put a leading . in their names.

```
eslintrc => .eslintrc
rubocop.yml => .rubocop.yml
scss-lint.yml => .sccs-lint.yml
```


## Usage in Rails

Add the gem to your Gemfile

```
   gem "linter"
```

or for a specific version

```
  gem 'linter', git: "git@github.com:ikuseiGmbH/linters.git", tag: "rubocop-0.53.0"
```

Run the rake task

```
   bundle exec rake linters:install
```

Each linter has a own installer, so the following works, too:

```
   bundle exec rake linters:rubocop
   bundle exec rake linters:eslint
   bundle exec rake linters:scss_lint
```
