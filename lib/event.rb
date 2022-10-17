require "pry"
class Event
	attr_accessor :start_date

	def initialize(date)
		@start_date = date.parse
	end
end

binding.pry