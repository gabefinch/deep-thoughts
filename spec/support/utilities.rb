def login(user)
  visit '/'
  click_on 'Login'
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_on 'Login'
end
