require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @reversed_name = @name.split("").reverse.join

    "#{@reversed_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num * @num 

    "#{@square}"
  end

  get '/say/:number/:phrase' do
    answer = ''

    @number = params[:number].to_i
    @phrase = params[:phrase]

    @number.times do 
      answer += @phrase
    end

    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if params[:operation] == 'add'
      sum = num1 + num2
      sum.to_s
    elsif params[:operation] == 'subtract'
      diff = num1 - num2 
      diff.to_s
    elsif params[:operation] == 'multiply'
      product = num1 * num2 
      product.to_s
    else
      divide = num1 / num2
      divide.to_s
    end
  end

end