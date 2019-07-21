require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bob = Student.new("Bob")
rob = Student.new("Rob")
blah = Student.new("Blah")

prof_x = Instructor.new("Xavier")
mrs_q = Instructor.new("Suzy")

easytest = BoatingTest.new(bob, "easytest", "passed", prof_x)
medtest = BoatingTest.new(bob, "medtest", "passed", mrs_q)
stuff = BoatingTest.new(bob, "stuff", "failed", prof_x)

hardtest = BoatingTest.new(rob, "hardtest", "failed", mrs_q)
test = BoatingTest.new(rob, "medtest", "passed", mrs_q)
medtest = BoatingTest.new(blah, "medtest", "passed", prof_x)
medtest = BoatingTest.new(blah, "medtest", "failed", prof_x)







binding.pry
0 #leave this here to ensure binding.pry isn't the last line

