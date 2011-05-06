require 'spec_helper'

describe User do
  
  subject { User.new(:email => 'xxx@example.com', :password => 'xxxpepehot', :password_confirmation => 'xxxpepehot') }

  describe 'validations' do
    it 'should validate the presence of first_name' do
      subject.should_not be_valid
      subject.errors.should include(:first_name)
    end

  end
end
