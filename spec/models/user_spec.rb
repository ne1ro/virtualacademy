require 'spec_helper'

describe User do
  it 'has a valid factory' do
    FactoryGirl.create(:post).should be_valid
  end

  context '#nickname' do
    it 'is invalid without' do
      FactoryGirl.build(:user, nickname: nil).should_not be_valid
    end

    it 'should have valid format' do
      FactoryGirl.build(:user, nickname: 'vasyA*').should_not be_valid
      FactoryGirl.build(:user, nickname: 'vasya-lol').should_not be_valid
      FactoryGirl.build(:user, nickname: '1vasyal0l').should be_valid
    end

    it 'should have defined length' do
      FactoryGirl.build(:user, nickname: 'lol').should_not be_valid
      FactoryGirl.build(:user, nickname: 'lolwtfcrazysuperrandomnicknamelolwtfcrazysuperrandomnicknamelolwtfcrazysuperrandomnickname').should_not be_valid
      FactoryGirl.build(:user, nickname: 'user').should be_valid
    end

    it 'should be unique' do
      user1 = FactoryGirl.create(:user, nickname: 'vasya')
      user2 = FactoryGirl.build(:user, nickname: 'vasya')

      user1.confirm!
      user2.confirm!
      
      user1.should be_valid
      user2.should_not be_valid
      user2.should have(1).error_on :nickname
    end
  end
end
