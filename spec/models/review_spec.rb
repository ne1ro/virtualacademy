require 'spec_helper'

describe Review do
  it 'should have a valid factory' do
    FactoryGirl.create(:review).should be_valid
  end

  it 'should have text' do
    FactoryGirl.build(:review, text: nil).should_not be_valid
  end

  it 'should have valid rate' do
    FactoryGirl.build(:review, rate: 0).should_not be_valid
    FactoryGirl.build(:review, rate: 11).should_not be_valid
    FactoryGirl.build(:review, rate: 5.95).should_not be_valid
    FactoryGirl.build(:review, rate: -100500).should_not be_valid
  end
end
