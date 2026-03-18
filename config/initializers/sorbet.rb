# typed: strict
# frozen_string_literal: true

require "sorbet-runtime"

class Module
  include T::Sig
end

class T::Enum # rubocop:disable Style/OneClassPerFile
  class << self
    sig { returns(T::Array[String]) }
    def serialized_values
      T.bind(self, T.class_of(T::Enum))
      values.map(&:serialize)
    end
  end
end
