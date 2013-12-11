require 'spec_helper'

long_string = (0...1000).map{ ('a'..'z').to_a[rand(26)] }.join  

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

  context '#location' do
    it 'should have valid format' do
      FactoryGirl.build(:user, location: 'USA#Florida Vice-City!').should_not be_valid
      FactoryGirl.build(:user, location: 'USA, Florida, Vice-City').should be_valid
    end

    it 'should have at least two words' do
      FactoryGirl.build(:user, location: 'USA,').should_not be_valid
      FactoryGirl.build(:user, location: 'USA, Florida').should be_valid
    end

    it 'should have valid length' do
      FactoryGirl.build(:user, location: 'a, b').should_not be_valid
      FactoryGirl.build(:user, location: long_string).should_not be_valid
    end
  end

  context '#about' do
    it 'should have valid length' do
      FactoryGirl.build(:user, about: long_string).should_not be_valid
      FactoryGirl.build(:user, about: long_string[0..1000]).should be_valid
    end
  end
  
  context '#money' do
    it 'is invalid wihout' do
      FactoryGirl.build(:user, money: nil).should_not be_valid
    end

    it 'should be more than zero' do
      FactoryGirl.build(:user, money: -10).should_not be_valid
    end
  end
  
  context '#fullname' do
    it 'is invalid without' do
      FactoryGirl.build(:user, fullname: nil).should_not be_valid
    end

    it 'have at least two words' do
      FactoryGirl.build(:user, fullname: 'Vasya').should_not be_valid
      FactoryGirl.build(:user, fullname: 'Vasya Vasyev').should be_valid
    end

    it 'should not have special symbols' do
      FactoryGirl.build(:user, fullname: 'Vasya#12 Lolov123').should_not be_valid
      FactoryGirl.build(:user, fullname: 'Вася Лолов').should be_valid
    end
  end

end
