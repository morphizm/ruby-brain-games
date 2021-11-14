# frozen_string_literal: true

require_relative '../main'

def calc(operator, num1, num2)
  case operator
  when '+'
    num1 + num2
  when '-'
    num1 - num2
  when '*'
    num1 * num2
  else
    raise "No such operator -- #{operator}"
  end
end

def run
  operators = '+-*'
  description = 'What is the result of the expression?'

  get_data = lambda {
    num1 = rand(10)
    num2 = rand(10)
    operator = operators[num1 % operators.length]
    question = "#{num1} #{operator} #{num2}"
    answer = calc(operator, num1, num2).to_s

    [question, answer]
  }

  run_engine(description, get_data)
end
