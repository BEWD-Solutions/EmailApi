class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session

private

    def authenticate
        authenticate_or_request_with_http_token do |token, options|
            @auth_user = User.find_by(auth_token: token)
        end
    end
end
