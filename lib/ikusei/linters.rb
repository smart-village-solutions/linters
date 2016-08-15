require "ikusei/linters/version"

module Ikusei
  module Linters
    require "ikusei/linters/railtie" if defined?(Rails)
  end
end
