require 'spec_helper'

describe Task do
  it 'has a valid factory' do
    FactoryGirl.create(:task).should be_valid
  end

    it 'is invalid without title' do
      FactoryGirl.build(:task, title: nil).should_not be_valid
    end

    it 'is invalid without body' do
      FactoryGirl.build(:task, body: nil).should_not be_valid
    end

    it 'should have valid number' do
      FactoryGirl.build(:task, number: 10.5).should_not be_valid
      FactoryGirl.build(:task, number: 0).should_not be_valid
      FactoryGirl.build(:task, number: -2).should_not be_valid
    end

end
