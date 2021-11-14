# frozen_string_literal: true

require_relative '../main'

def run
  description = 'Find the greatest common divisor of given numbers.'

  get_data = lambda {
    num1 = rand(100)
    num2 = rand(100)
    question = "#{num1} #{num2}"
    answer = num1.gcd(num2).to_s

    [question, answer]
  }

  run_engine(description, get_data)
end
