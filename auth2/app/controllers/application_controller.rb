class ApplicationController < ActionController::Base
    include Authentication
    #use where you have to authenticate user before accessing the page
    # before_action :authenticate_user!
end
