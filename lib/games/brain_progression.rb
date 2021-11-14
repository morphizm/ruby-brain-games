# frozen_string_literal: true

require_relative '../main'

def run
  progression_length = 10
  description = 'What number is missing in the progression?'

  get_data = lambda {
    first_num = rand(10)
    successive_member = rand(10)
    progression = (1..progression_length).to_a.map do |n|
      first_num + (n - 1) * successive_member
    end
    hidden_element_index = rand(progression_length)
    progression[hidden_element_index] = '..'
    question = progression.join(' ')
    answer = first_num + hidden_element_index * successive_member

    [question, answer.to_s]
  }

  run_engine(description, get_data)
end
