require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  # get '/' do
  #   "Hello World"
  # end

  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get "/square/:number" do
    @square = params[:number].to_i**2
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @sentence = params[:phrase].to_s * params[:number].to_i
    "#{@sentence}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
    
  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    ans = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      ans = (num1 + num2).to_s
    when 'subtract'
      ans = (num1 - num2).to_s
    when 'multiply'
      ans = (num1 * num2).to_s
    when 'divide'
      ans = (num1 / num2).to_s
    end
  end
end