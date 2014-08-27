#encoding: utf-8

require 'spec_helper'

describe "User Pages" do
 	subject { page }

 	describe "signup page" do
 		before { visit signup_path }
 		it { should have_content('Заполните поля для регистрации') }
 	end

 	describe "profile page" do
 		let(:user) { FactoryGirl.create(:user) }
 		before { visit user_path(user) }
 		it { should have_content('Вернуться к списку') }
 	end
end
