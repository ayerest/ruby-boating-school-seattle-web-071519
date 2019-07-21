class Instructor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        BoatingTest.all.each do |test|
            if test.boating_test_name == name && test.student == student
                test.boating_test_status == "passed"
                return test
            else
                new_test = BoatingTest.new(student, test_name, "passed", self)
                return new_test
            end
        end
    end

    def fail_student(student, test_name)
        BoatingTest.all.each do |test|
            if test.boating_test_name == name && test.student == student
                test.boating_test_status == "failed"
                return test
            else
                new_test = BoatingTest.new(student, test_name, "failed", self)
                return new_test
            end
        end
    end
end
