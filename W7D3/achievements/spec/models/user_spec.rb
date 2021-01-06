require 'rails_helper'

# validates :username, :presence: true

#validations
#associations
#class scope methods 

RSpec.describe User, type: :model do
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(:session_token) }
  it { should validate_length_of(:password).is_at_least(6) }

  describe '#ensure_session_token' do
    
  end
  
end