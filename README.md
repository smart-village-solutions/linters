# Linters

This are our configuration files for [scss-lint](https://github.com/brigade/scss-lint), [Rubocop](https://github.com/bbatsov/rubocop) and [ESLint](http://eslint.org/).
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
   gem "ikusei-linters", github: "ikuseiGmbH/linters"
```

Run the rake task

```
   bundle exec rake ikusei:lint
```

Each linter has a own task, so the following works, too:

```
   bundle exec rake ikusei:rubocop
```
