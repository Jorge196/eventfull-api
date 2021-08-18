class ApplicationController < ActionController::API
    def current_user
        User.first_or_create(email: (@current_user) , password: 'password')
    end 
end
