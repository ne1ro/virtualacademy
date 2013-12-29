require "spec_helper"
describe User do
  it "has a valid factory" do
    FactoryGirl.create(:post).should be_valid
  end

  context "#nickname" do
    it "should be exist" do
      FactoryGirl.build(:user, nickname: nil).should_not be_valid
    end

    it "should have valid format" do
      FactoryGirl.build(:user, nickname: "vasyA*").should_not be_valid
      FactoryGirl.build(:user, nickname: "vasya-lol").should be_valid
      FactoryGirl.build(:user, nickname: "1vasyal0l").should be_valid
    end

    it "should have defined length" do
      FactoryGirl.build(:user, nickname: "lol").should_not be_valid
      FactoryGirl.build(:user, nickname: "lolwtfcrazysuperrandomnicknamelolwtfcrazysuperrandomnicknamelolwtfcrazysuperrandomnickname").should_not be_valid
      FactoryGirl.build(:user, nickname: "user").should be_valid
    end

    it "should be unique" do
      user1 = FactoryGirl.build(:user, nickname: "random")
      user2 = FactoryGirl.build(:user, nickname: "random")

      user2.should_not be_valid
      user2.should have(1).error_on :nickname
    end
  end

  context "#location" do
    it "should have valid format" do
      FactoryGirl.build(:user, location: "USAFlorida Vice-City!").should_not be_valid
      FactoryGirl.build(:user, location: "USA,Florida,Vice-City").should be_valid
    end

    it "should have at least two words" do
      FactoryGirl.build(:user, location: "USA,").should_not be_valid
      FactoryGirl.build(:user, location: "USA, Florida").should be_valid
    end
  end

  context "#money" do
    it "is invalid without" do
      FactoryGirl.build(:user, money: nil).should_not be_valid
    end

    it "should be greather than 0 or equal" do
      FactoryGirl.build(:user, money: -10).should_not be_valid
    end
  end
  
  context "#fullname" do
    it "should be exist" do
      FactoryGirl.build(:user, fullname: nil).should_not be_valid
    end

    it "have at least two words" do
      FactoryGirl.build(:user, fullname: "Vasya").should_not be_valid
      FactoryGirl.build(:user, fullname: "Vasya Vasyev").should be_valid
    end

    it "should not have special symbols" do
      FactoryGirl.build(:user, fullname: "Vasya#12 @Lolov123").should_not be_valid
      FactoryGirl.build(:user, fullname: "Вася Лолов").should be_valid
    end
  end

  context "#email" do
    it "should be exist" do
      FactoryGirl.build(:user, email: nil).should_not be_valid
    end

    it "should have valid format" do
      FactoryGirl.build(:user, email: "random").should_not be_valid
      FactoryGirl.build(:user, email: "random@example").should_not be_valid
      FactoryGirl.build(:user, email: "random@example.com").should be_valid
    end
  end

  context "#password" do
    it "should be exists" do
      FactoryGirl.build(:user, password: nil).should_not be_valid
    end

    it "should have letters, capital letters, numbers and have 8 chars" do
      FactoryGirl.build(:user, password: "Rand0m").should_not be_valid
      FactoryGirl.build(:user, password: "Randoooom").should_not be_valid
      FactoryGirl.build(:user, password: "rand00000m").should_not be_valid
      FactoryGirl.build(:user, password: "Rand0mizer").should_not be_valid
    end
  end
end
