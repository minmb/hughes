module Hughes

  class Maybe

    def initialize(value)
      @value = value
    end

    def method_missing(name, *args, &block)
      if @value.respond_to?(name)
        Maybe[@value.send(name, *args, &block)]
      else
        Nothing[]
      end
    end

    def respond_to?(method_name, include_private = false)
      true
    end

    def &
      @value      
    end

    def self.[](value)
      Maybe.new(value)
    end

  end

end