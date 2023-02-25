require 'auth0'

class DashboardController < ApplicationController
    include Secured

    def show
        @user = session[:userinfo]
        Rails.logger.info(auth0_client.user(session[:userinfo]["sub"]))
    end

    private def auth0_client
        Auth0Client.new(
            client_id: ENV['AUTH0_M2M_CLIENT_ID'],
            client_secret: ENV['AUTH0_M2M_CLIENT_SECRET'],
            domain: ENV['AUTH0_DOMAIN']
        )
    end
end
