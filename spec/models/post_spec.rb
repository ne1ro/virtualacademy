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
      FactoryGirl.build(:post, title: 'My first blog #p0st').to_param.should eq 'my-first-blog-p0st'
    end

    it 'should have fixed length' do
      long_title = '11029i 0192wi0192iw 091i2w09i12i9010892f 098f 019 0912i09 11029i 0192wi0192iw 091i2w09i12i9010892f 098f 019 0912i09 11029i 0192wi0192iw 091i2w09i12i9010892f 098f 019 0912i09 \
      11029i 0192wi0192iw 091i2w09i12i9010892f 098f 019 0912i09 11029i 0192wi0192iw 091i2w09i12i9010892f 098f 019 0912i09 11029i 0192wi0192iw 091i2w09i12i9010892f 098f 019 0912i09'
      FactoryGirl.build(:post, title: long_title).should_not be_valid
      FactoryGirl.build(:post, title: 'w').should_not be_valid
    end
  end

  it 'is invalid without body' do
    FactoryGirl.build(:post, body: nil).should_not be_valid
  end

  it 'is invalid without publish' do
    FactoryGirl.build(:post, published: nil).should_not be_valid
  end
end
