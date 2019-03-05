module OmniAuth
  module Strategies
    class Doorkeeper < OmniAuth::Strategies::OAuth2
      option :name, :doorkeeper

      option :client_options,
             site: ENV["DOORKEEPER_APP_URL"],
             authorize_path: "/oauth/authorize"

      uid do
        raw_info["id"]
      end

      info do
        {
          email: raw_info["email"]
        }
      end

      def raw_info
        Rails.logger.debug 'raw_info'
        res = access_token.get("/me.json")
        Rails.logger.debug res
        @raw_info ||= res.parsed
      end
    end
  end
end
