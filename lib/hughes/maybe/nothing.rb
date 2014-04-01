require 'singleton'

module Hughes

  class Nothing

    include Singleton

    def method_missing(name, *args, &block)
      Nothing[]
    end

    def respond_to?(method_name, include_private = false)
      true
    end

    def &
      nil
    end

    def self.[]
      Nothing.instance
    end

  end

end