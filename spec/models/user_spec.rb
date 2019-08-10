require 'rails_helper'

describe User do

  subject(:user) { FactoryBot.build(:user) }

  it 'is valid with full name and email' do
    expect(user).to be_valid
  end

  it 'is not valid without full name' do
    user.full_name = nil

    expect(user).not_to be_valid
  end

  it 'is not valid without email' do
    user.email = nil

    expect(user).not_to be_valid
  end

  it 'is not valid if the email already exists' do
    FactoryBot.create(:user, email: user.email)

    expect(user).not_to be_valid
  end

end
