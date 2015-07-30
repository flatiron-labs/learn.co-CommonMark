# Ruby repls are evaluated using the testing library below. 
# To do so, we pass this testing library along with the student's response 
# and the instructor's validation(s) to the repl.it API for evaluation.

class Fis
  class Test
    class SkippedError < StandardError
    end

    def test(title, &b)
      begin
        if b
          result = b.call
          evaluate(result, title)
        else
          "pending: #{title}"
        end
      rescue => e
        exception_handler(e, title)
      end
    end

    def skip(message=nil)
      message ||= "skipped."
      raise SkippedError.new(message)
    end

    def assert(statement)
      !!statement
    end

    def assert_equal(actual, expected)
      if expected == actual
        true
      else
        [expected, actual, "to equal"]
      end
    end

    def assert_type(obj, expected)
      if obj.is_a?(expected)
        true
      else
        [expected, obj, "to be a(n)"]
      end
    end

    def assert_length(obj, length)
      if obj.length == length
        true
      else
        [length, obj, "to have length"]
      end
    end

    def assert_match(array, expected)
      if (array.length == expected.length) && array.all? {|e| expected.include?(e)}
        true
      else
        [expected, array, "to match array"]
      end
    end

    def assert_true(obj)
      if !!obj
        true
      else
        [true, obj, "to be"]
      end
    end

    def assert_false(obj)
      if !!obj
        [false, obj, "to be"]
      else
        true
      end
    end

    def assert_contains(array, expected)
      if array.include?(expected)
        true
      else
        [expected, array, "to contain"]
      end
    end

    def assert_output(actual, expected)
      if expected == actual
        true
      else
        [expected, actual, "to equal"]
      end
    end

    def evaluate_response(student_response)
      if capture_stdout {student_response}.empty?
          student_response
      else
         capture_stdout {student_response}
      end
    end

    def capture_stdout(&block)
      original_stdout = $stdout
      $stdout = fake = StringIO.new
      begin
        yield
      ensure
        $stdout = original_stdout
      end
      fake.string
    end

    private

    def exception_handler(e, title)
      if e.class == Fis::Test::SkippedError
        "skipped: #{e.message}"
      else
        "#{e}\n#{e.backtrace.first}"
      end
    end

    def evaluate(result, title)
      if result.is_a?(Array)
        result[1] = "nil" if result[1].to_s.empty?
        "expected #{result[1]} #{result.last} #{result[0]}"
      elsif result
        true
      else
        "unknown error"
      end
    end
  end
end
