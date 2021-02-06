export const signup = user => (
  $.ajax({
    url: 'api_users',
    method: 'POST',
    data: {user}
  })
)

export const login = user => (
  $.ajax({
    url: 'api_session',
    method: 'POST',
    data: {user}
  })
)

export const logout = () => (
  $.ajax({
    url: 'api_session',
    method: 'DELETE'
  })
)