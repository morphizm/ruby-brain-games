# frozen_string_literal: true

def run_engine(description, get_data)
  $stdout.write "Welcome to the Brain Games!\n"
  $stdout.write 'May I have your name? '
  name = gets.gsub("\n", '')
  $stdout.write "Hello, #{name}!\n"
  $stdout.write description
  $stdout.write "\n"

  3.times do
    question, correct_answer = get_data.call
    $stdout.write "Question: #{question}\n"
    $stdout.write 'Your answer: '
    answer = gets.gsub("\n", '')
    next unless correct_answer != answer

    $stdout.write "'#{answer}' is wrong answer ;(. Correct answer was '#{correct_answer}'.\n"
    $stdout.write "Let's try again, #{name}!"
    return
  end
  $stdout.write "Congratulations, #{name}"
end
