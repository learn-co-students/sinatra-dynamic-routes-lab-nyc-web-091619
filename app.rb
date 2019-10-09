require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    erb :'reverse'
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i 
    erb :'squared'
  end

  get '/say/:number/:phrase' do

    @phrase = params[:phrase]
    @times = params[:number].to_i

    @return_string = ""

    @times.times { @return_string += @phrase }

    erb :'phrases'   
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    
    @return_string = @word1+" "+@word2+" "+@word3+
      " "+@word4+" "+@word5+"."
   
    erb :'fivewords'
  end
end