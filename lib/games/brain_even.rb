# frozen_string_literal: true

require_relative '../main'

def run
  description = "Answer 'yes' if the number is even, otherwise answer 'no'."

  get_data = lambda {
    num = rand(100)
    answer = num.even? ? 'yes' : 'no'

    [num, answer]
  }
  run_engine(description, get_data)
end
