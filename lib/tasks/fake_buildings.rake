require 'faker'

namespace :db do
	desc "Create buildings"
	task fake_buildings: :environment do
		12.times do |n|
			puts "[DEBUG] creating building #{n+1} of 12"
			fullname = Faker::Name.name
			email = "user-#{n+1}@example.com"
			password = "password"
			image = Faker::Avatar.image
			Building.create!(
					address: Faker::Address.street_address,
					city: Faker::Address.city,
					name: Faker::Company.name,
					state: Faker::Address.state,
					userid: Faker::Crypto.md5,
					zip: ''
			)
		end
	end

	# task fake_profiles: :environment do
	# 	count = 0
	# 	address = []
	# 	address[0] = '222 S Main ST, Salt Lake City, UT 84101'
	# 	address[1] = '175 200 South, Salt Lake City, UT 84101'
	# 	address[2] = '3003 Thanksgiving Way, Lehi, UT 84043'
	# 	address[3] = '3740 13400 S, Riverton, UT 84065'
	# 	address[4] = '231 400 South, Salt Lake City, UT 84111'
	# 	address[5] = '4315 South 2700 West, Salt Lake City, UT 84184'
	# 	User.last(6).reverse.each do |user|
	#
	# 		temp_user = User.where :id => user.id
	# 		if temp_user.present? && temp_user.first.profile.blank?
	# 			full_address = address[count]
	# 			parsed_address = full_address.split(/\s*,\s*/)
	#
	# 			1.times do |n|
	# 				puts "[DEBUG] creating activity #{count} of ~6"
	# 				profile = Profile.create!(
	# 						name: Faker::Name.name,
	# 						email: Faker::Internet.email,
	# 						street: parsed_address[0],
	# 						city: parsed_address[1],
	# 						state: parsed_address[2],
	# 						mobile_phone: Faker::PhoneNumber.cell_phone,
	# 						full_address: address.sample,
	# 						user_id: user.id,
	# 						job_id: [1, 2].sample,
	# 						skill_list: ['hugger', 'detail orientated', 'outoing', 'playful'].sample,
	# 						provider: 1,
	# 						customer: 0,
	# 						terms: 1
	#
	# 				)
	# 				Experience.create!(
	# 						specialNeeds: [0, 1].sample,
	# 						infants: [0, 1].sample,
	# 						twins: [0, 1].sample,
	# 						homework: [0, 1].sample,
	# 						years: 15,
	# 						sickChildren: [0, 1].sample,
	# 						profile_id: profile.id
	# 				)
	# 				Bio.create!(
	# 						title: Faker::Name.title,
	# 						experience: Faker::Lorem.paragraph(2, false, 4),
	# 						car: [0, 1].sample,
	# 						pet: [0, 1].sample,
	# 						smoke: [0, 1].sample,
	# 						profile_id: profile.id,
	# 						minHour: 12,
	# 						maxHour: 15,
	# 						travel: 22,
	# 				)
	# 			end # 6.times
	# 		end # user.present?
	# 		count+=1
	# 	end # User.each
	# 	count = 0
	# 	User.take(6).each do |user|
	# 		temp_user = User.where :id => user.id
	# 		if temp_user.present? && temp_user.first.profile.blank?
	# 			full_address = address[count]
	# 			parsed_address = full_address.split(/\s*,\s*/)
	#
	# 			1.times do |n|
	# 				puts "[DEBUG] creating activity #{count} of ~6"
	# 				profile = Profile.create!(
	# 						name: Faker::Name.name,
	# 						email: Faker::Internet.email,
	# 						street: parsed_address[0],
	# 						city: parsed_address[1],
	# 						state: parsed_address[2],
	# 						mobile_phone: Faker::PhoneNumber.cell_phone,
	# 						full_address: address.sample,
	# 						user_id: user.id,
	# 						job_id: [1, 2].sample,
	# 						provider: 0,
	# 						customer: 1,
	# 						terms: 1
	# 				)
	# 				Bio.create!(
	# 						title: Faker::Name.title,
	# 						experience: Faker::Lorem.paragraph(2, false, 4),
	# 						car: [0, 1].sample,
	# 						pet: [0, 1].sample,
	# 						smoke: [0, 1].sample,
	# 						profile_id: profile.id,
	# 						minHour: 12,
	# 						maxHour: 15,
	# 						travel: 22,
	# 				)
	# 				Experience.create!(
	# 						specialNeeds: [0, 1].sample,
	# 						infants: [0, 1].sample,
	# 						twins: [0, 1].sample,
	# 						homework: [0, 1].sample,
	# 						years: 15,
	# 						sickChildren: [0, 1].sample,
	# 						profile_id: profile.id
	# 				)
	# 				tmpNumber = rand(10..30)
	# 				Gig.create!(
	# 						profile_id: profile.id,
	# 						jobName: Faker::Name.title,
	# 						description: Faker::Lorem.paragraph(2, false, 4),
	# 						endDate: Faker::Date.forward(tmpNumber),
	# 						job_id: [1, 2].sample
	# 				)
	# 			end # 6.times
	# 		end # user.present?
	# 		count+=1
	# 	end
	# end # fake_Activities

end