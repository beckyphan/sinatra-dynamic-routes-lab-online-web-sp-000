require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @reverse = @name.reverse 
    "#{@reverse}"
  end 
  
  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square.to_s}"
  end 
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i 
    "#{params[:phrase] * @number}"
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 
  
  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i 
    @number2 = params[:number2].to_i
    
    case params[:operation]
    when 'add'
      "#{@number1 + @number2}"
    when 'subtract'
      "#{@number1 - @number2}"
    when 'multiply'
      "#{@number1 * @number2}"
    when 'divide'
      "#{@number1 / @number2}"
    end
  end 

end