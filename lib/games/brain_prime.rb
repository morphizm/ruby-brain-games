# frozen_string_literal: true

require 'prime'

require_relative '../main'

def run
  description = 'Answer "yes" if given number is prime. Otherwise answer "no".'

  get_data = lambda {
    num = rand(100)
    answer = Prime.prime?(num) ? 'yes' : 'no'

    [num, answer]
  }

  run_engine(description, get_data)
end
