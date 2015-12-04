class RegistrationsController < Devise::RegistrationsController
    respond_to :json

private

    def sign_up_params
        params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :username)
    end

    def account_update_params
        params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :current_password, :username)
    end

end