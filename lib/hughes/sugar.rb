module Hughes

  module Sugar

    include Hughes

    def try(value)
      expr = yield Maybe[value]

      expr.is_a?(Maybe) || expr.is_a?(Nothing) ? expr.send(:&) : expr
    end

  end
end

