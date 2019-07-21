class Student
    attr_reader :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        new_test = BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
        self.all.find do |student|
            student.first_name == name
        end
    end

    #helper method for grade percentage
    def my_tests
        BoatingTest.all.select do |test|
            test.student == self
        end
    end

    def grade_percentage
        passed_tests = self.my_tests.select do |my_test|
            my_test.boating_test_status == "passed"
        end
        passed_tests.length / (self.my_tests.length * 1.0)
    end
end
