require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get('/reversename/:name') {
    @name = params[:name]
    @name.reverse
  }

  get('/square/:number') {
    @square = (params[:number].to_i ** 2).to_s
  }

  get('/say/:number/:phrase') {
    phrase = params[:phrase]
    number = (params[:number]).to_i
    answer = '' 
    number.times {answer += phrase}
    answer
  }

  get('/say/:word1/:word2/:word3/:word4/:word5') {
    word_array = []
    word_array << params[:word1]
    word_array << params[:word2]
    word_array << params[:word3]
    word_array << params[:word4]
    word_array << params[:word5]
    word_array.join(" ") + "."
  }

  get('/:operation/:number1/:number2') {
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    operation = params[:operation]
    
    case operation
    when 'add'
      result = (number1 + number2).to_s
    when 'subtract'
      result = (number1 - number2).to_s
    when 'multiply'
      result = (number1 * number2).to_s
    when 'divide'
      result = (number1 / number2).to_s
    end
  }


end