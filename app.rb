require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @squareme = params[:number]
    # binding.pry
    @squarednumber = @squareme.to_i * @squareme.to_i
    @squarednumber.to_s
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number]
    @phrase * @number.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    
    answer = operate_with_strings(@number1.to_i, @number2.to_i, @operation)
    answer.to_s
    # binding.pry
  end

  def operate_with_strings(number1, number2, operator)
    if operator == "add"
      number1 + number2
    elsif operator == "subtract"
      number1 - number2
    elsif operator == "divide"
      number1 / number2
    elsif operator == "multiply"
      number1 * number2
    else
      puts "no operator"
    end
  end

end