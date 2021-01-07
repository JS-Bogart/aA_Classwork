require 'rails_helper'

RSpec.describe UsersController, type: :controller do

    describe 'GET #index' do
        it 'renders users index page' do
            get :index 
            expect(response).to be_success
            expect(response).to render_template(:index)
        end
    end

    describe 'GET #show' do
        context 'if it finds a user' do
            it 'renders users show page' do
              user = User.create!(username: 'Julia', 
                password: '123456', 
                session_token: '1231231adsdada'
              )
              get :show, params: {id: user.id}
              expect(response).to be_success #?
              expect(response).to render_template(:show)
            end
        end
        context 'if it does not find a user' do
            it 'redirects to users index page' do
                get :show, params: {id: -1}
                expect(response).to redirect_to(users_url)
            end
        end
    end

end