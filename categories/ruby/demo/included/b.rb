# frozen_string_literal: true

require_relative './a'

class B
  include A
end

B.haha
