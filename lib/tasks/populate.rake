namespace :db do
	desc "Erase and fill database"
	task :populate => :environment do

		User.delete_all
		
		User.populate 20 do |user|
			user.surename = Faker::Name.last_name
			user.name = Faker::Name.first_name
			user.second_name = Faker::Name.first_name
			user.birthday = Faker::Business.credit_card_expiry_date
			user.login = Faker::Internet.user_name
			user.email= Faker::Internet.safe_email
		end
	end
end