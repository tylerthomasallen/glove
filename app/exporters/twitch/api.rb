require 'httparty'

module Exporters
  module TwitchApi
    module Twitch
      class Api
        HEADERS = {
          "Authorization" => "Bearer #{}",
          "Accept"        => "application/json",
          "Content-Type"  => "application/json, charset=utf8"
        }

        include HTTParty
        debug_output $stdout if Rails.env.development?
        base_uri 'https://api.sendbird.com/v3'
        headers HEADERS
        format :json

        include Users
      end
    end
  end
end
