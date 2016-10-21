class Person
		attr_reader :year_of_birth
		attr_writer :job_title
		attr_accessor :last_name
	def initialize(first_name,last_name,year_of_birth)
			@first_name = first_name
			@last_name = last_name
			@year_of_birth = year_of_birth
			@title = 'Baby'
	# these are instance variables
	# this is the behaviour of the object
	end

	def greetings
		"#{@first_name} #{@last_name} you were born in #{@year_of_birth}"
	end

	def full_name
		"#{@first_name} #{@last_name}"
	end

	def job_title=(job_title)
		@job_title = job_title
	end
end

class Professor < Person
	def full_name
		"Prof.#{super}"
	end
	def teach(students)
		students.each {|student| student.learn}
	end
end

class Student < Person
	attr_reader :knowledge_level
	def initialize(first_name, last_name, year_of_birth)
		super(first_name,last_name,year_of_birth)
		@knowledge_level = 0
	end

	def learn
		@knowledge_level +=1
		'i get it!!'
	end

end
