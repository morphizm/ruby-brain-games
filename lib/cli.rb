# frozen_string_literal: true

def greeting
  $stdout.write "Welcome to the Brain Games!\n"
  $stdout.write 'May I have your name? '
  $stdout.write "Hello, #{gets.gsub("\n", '')}!"
end
