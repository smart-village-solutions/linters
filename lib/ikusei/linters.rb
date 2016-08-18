require "ikusei/linters/version"

module Ikusei::Linters
  require "ikusei/linters/railtie" if defined?(Rails)
end
