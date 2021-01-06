require 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
  # it { should validate_length_of(:password).is_at_least(6) }

  describe 'not saving password to DB' do
    #create user- > find user , and pw != pw (no attribute .pw)
    it 'does not save password to DB' do
      FactoryBot.create(:user, username: 'Julia')
      user = User.find_by(username: 'Julia')
      expect(user.password).to_not eq('123456')
    end

  end

  describe 'password encryption' do
    it 'it encrypts the password with BCrypt' do
      expect(BCrypt::Password).to receive(:create)
      user = User.new(username: 'alex', password: '123456')
    end
  end

  
end