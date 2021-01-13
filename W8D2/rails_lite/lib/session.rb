require 'json'
require 'byebug'

class Session
  # find the cookie for this app
  # deserialize the cookie into a hash
  def initialize(req)
    if req.cookies['_rails_lite_app']
      @cookie_value = JSON.parse(req.cookies['_rails_lite_app'])
    else
      @cookie_value = {}
    end
  end

  def [](key)
    @cookie_value[key]
  end

  def []=(key, val)
  end

  # serialize the hash into json and save in a cookie
  # add to the responses cookies
  def store_session(res)
  end
end
