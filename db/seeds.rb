puts 'cleaning db...'
Monument.destroy_all
puts 'db cleaned!'

puts 'create monuments...'
Monument.create(name: "Eiffel tower", address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris", opening_date: "1889/03/31")
Monument.create(name: "Statue of Liberty", address: "New York, État de New York 10004, États-Unis", opening_date: "1886/10/28")
puts "#{Monument.count} monuments created!"

puts 'all done!'
