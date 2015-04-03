describe Comment do
  it { should belong_to(:entry) }
  it { should belong_to(:user) }
end
