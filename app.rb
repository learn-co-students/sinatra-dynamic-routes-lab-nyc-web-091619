require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @prod = @num**2
    @prod.to_s
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    "#{params[:phrase] * @num}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:num1/:num2" do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    if params[:operation] == "add"
      @prod = @num1 + @num2
    elsif params[:operation] == "subtract"
      @prod = @num1 - @num2
    elsif params[:operation] == "multiply"
      @prod = @num1 * @num2
    else
      @prod = @num1 / @num2
    end
    @prod.to_s
  end
end