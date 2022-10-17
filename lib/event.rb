require "pry"
require 'time'
class Event
	attr_accessor :start_date, :min_event, :name_event
	@@mail = []

	def initialize (date_to_save, min_event_to_save, name_event_to_save, mail_to_save)
		@start_date = Time.parse(date_to_save)
		@min_event = min_event_to_save.to_i
		@name_event = name_event_to_save
		@@mail = mail_to_save

	end

	def to_s
		puts ">Titre: #{name_event}"
		puts ">Date de début: #{start_date}"
		puts ">Durée: #{min_event}"
		puts ">Invités: #{@@mail}"
	end

	def postpone_24h
		@start_date += 86400
	end

	def return_date
		puts start_date
	end

	def return_event
		puts min_event
	end

	def return_mail
		puts @@mail
	end

	def end_date
		@start_date + min_event
	end

	def is_past?
		start_date < Time.now
	end

	def is_future?
		start_date > Time.now
	end

	def is_soon?
		start_date > (Time.now) - 1800
	end

end


binding.pry