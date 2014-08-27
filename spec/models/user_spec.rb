#encoding: utf-8
require 'spec_helper'

describe User do
  before do
  	@user = User.new(surename: "Иванов",
			  		name: "Иван",
			  		second_name: "Петрович",
			  		birthday: "19.02.1982",
			  		login: "ivan67",
			  		email: "ivan@example",
			  		password: "foobar1",
			  		password_confirmation: "foobar1")
 	 
  end

  subject { @user }
	  it { respond_to(:surename) }
	  it { respond_to(:name) }
	  it { respond_to(:second_name) }
	  it { respond_to(:birthday) }
	  it { respond_to(:login) }
	  it { respond_to(:email) }
	  it { respond_to(:password)}
	  it { respond_to(:password_confirmation)} 

	  it { should be_valid}

	  describe "when User has short login" do
		before { @user.login = "ivan"}

		it { should_not be_valid }	  	
	  end
  

  	  describe "has User login is no longer than 32 symbols" do
  	  	before { @user.login = "q" * 33}

  	  	it { should_not be_valid}
  	  end

      describe "when User has not unique login" do
      	before do
      		another_user = @user.dup
      		another_user.save
      	end

      	it {should_not be_valid}
      end

end
