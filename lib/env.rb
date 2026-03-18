# typed: true
# frozen_string_literal: true

require "sorbet-runtime"
require "dotenv/load"

class EnvConfig < T::Struct
  const :openai_api_url, String
  const :openai_api_key, String
  const :sentry_dsn, T.nilable(String), default: nil
end

ENV_UNSAFE = T.unsafe(ENV)

Env = EnvConfig.new(
  openai_api_url: ENV_UNSAFE["OPENAI_API_URL"],
  openai_api_key: ENV_UNSAFE["OPENAI_API_KEY"],
  sentry_dsn: ENV_UNSAFE["SENTRY_DSN"].presence,
)
