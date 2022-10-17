require "pry"
class User
	attr_accessor :email, :age
	@@all_users = []

	def initialize(email_to_save, age_to_save)
		@email = email_to_save
		@age = age_to_save
		@@all_users.push(self)
	end

	def self.all
		return @@all_users
	end

	def read_email
		return @email
	end

	def read_age
		return @age 
	end
end

binding.pry