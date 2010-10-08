#require File.expand_path(File.join(File.dirname(__FILE__), *%w[.. .. spec_helper]))

describe '/index' do 
  it "should redirect to login if not logged in" do 
  end

  it "should display your account information if you are logged in and not an admin" do 
  end

  it "should display an option for admin menu if you are allowed to be an admin and logged in" do 
  end

  it "should provide a logout link" do 
  end
end


describe '/login' do
  it 'should display a login field' do
  end

  it 'should display a password field' do
  end

  it 'should be able to authenticate via certificate' do
  end

  it 'should display an error if login field is blank' do
  end

  it 'should offer a password recovery option if you forgot your password' do 
  end 

  it 'should have a common footer' do 
  end 

  it 'should have a favicon' do 
  end
end
