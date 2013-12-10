require 'spec_helper'

describe Post do
  it 'has a valid factory' do
    FactoryGirl.create(:post).should be_valid
  end

  context '#title' do
    it 'is invalid without' do
      FactoryGirl.build(:post, title: nil).should_not be_valid
    end
  
    it 'should have valid slug ' do
      FactoryGirl.build(:post, title: 'My first blog #p0st').should be 'my-first-blog-post'
    end

    it 'should have fixed length' do
      FactoryGirl.build(:post, title: '11029i 0192wi0192iw 091i2w09i12i9010892f 098f 019 0912i09 1029 0129f0912 0f912u 0912i 0921093').should_not be_valid
    end
  end

  it 'is invalid without body' do
    FactoryGirl.build(:post, body: nil).should_not be_valid
  end

  it 'is invalid without publish' do
    FactoryGirl.build(:post, published: nil).should_not be_valid
  end
end
