class HomeController < ApplicationController
    def index
        redirect_to '/dashboard' if session[:userinfo].present?
    end
end