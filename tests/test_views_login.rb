#require File.expand_path(File.join(File.dirname(__FILE__), *%w[.. .. spec_helper]))

# When hitting the main page,
#  and you are not logged in,
#  you should see a login/password prompt
describe '/index' do 
  it "should display login prompt if you're not logged in" do 
  end

  it "should display a password prompt if you are not logged in" do
  end

  it "should display your account information if you are logged in and not an admin" do 
  end

  it "should display an option for admin menu if you are allowed to be an admin and logged in " do 
  end

  it "should provide a logout link if you are logged in" do 
  end
end
