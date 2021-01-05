class User < ApplicationRecord

    def self.generate_session_token
        SecureRandom::urlsafe_base64
    end

    def reset_session_token!
        self.session_token ||= User.generate_session_token
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= User.generate_session_token
        
    end

end
