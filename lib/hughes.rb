require "hughes/version"

module Hughes
  autoload :Maybe, 'hughes/maybe/maybe'
  autoload :Nothing, 'hughes/maybe/nothing'
  autoload :Sugar, 'hughes/sugar'
end

self.extend Hughes::Sugar