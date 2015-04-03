FactoryGirl.define do

  factory(:user) do
    email('test@test.com')
    password('password')
    phone('5415135643')
  end

  factory(:entry) do
    title('Bubble gum')
    body('I hate bubble gum.')
  end

  factory(:comment) do
    body('I could not agree more')
  end


end
