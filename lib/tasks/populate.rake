namespace :db do
	desc "Erase and fill database"
	task :populate => :environment do

		User.delete_all
		
		20.times do
			user = User.new
			user.surename = Faker::Name.last_name
			user.name = Faker::Name.first_name
			user.second_name = Faker::Name.first_name
			user.birthday = Faker::Business.credit_card_expiry_date
			user.login = Faker::Internet.user_name
			user.email= Faker::Internet.safe_email
			user.password = "password"
			user.password_confirmation = "password"
			user.save
		end
	end
end