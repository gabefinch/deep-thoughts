require 'rails_helper'

describe User do
  it { should have_many(:entries) }
  it { should have_many(:comments) }
end
