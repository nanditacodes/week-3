require 'securerandom'

if SecureRandom.random_number > 0.5
  puts "Middleman"
else
  puts "TDD"
end
