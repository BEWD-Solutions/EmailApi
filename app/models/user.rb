class User < ActiveRecord::Base
	before_create :set_auth_token
	
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :trackable, :validatable

private

    def set_auth_token
        if auth_token.present?
            return
        else
            self.auth_token = generate_auth_token
        end
    end

    def generate_auth_token
        return SecureRandom.uuid.gsub(/\-/, '')
    end

end
