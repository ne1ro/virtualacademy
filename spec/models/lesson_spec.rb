require 'spec_helper'

describe Lesson do
  it 'should have valid factory' do
    FactoryGirl.create(:lesson).should be_valid
  end

  context '#title' do
    it 'should be exist' do
      FactoryGirl.build(:lesson, title:nil).should_not be_valid
    end

    it 'should have slug' do
      FactoryGirl.build(:lesson, title:'How to make a met').to_param.should eq 'how-to-make-a-met'
    end

    it 'should have defined length' do
      FactoryGirl.build(:lesson, title: 'wtf, lol, omg, what, is, wonderful, lesson, that, i, just, made, on, this, p, r, o, j, e, c, t, yep, wow').should_not be_valid
    end
  end
end
