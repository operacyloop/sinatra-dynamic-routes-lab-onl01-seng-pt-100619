require_relative 'config/environment'

class App < Sinatra::Base

  # Get reversename/:name
  get "/reversename/:name" do
    @reverse_name = params[:name].reverse!
    "#{@reverse_name}"
  end

  #Get square/:number
  get "/square/:number" do
    "#{params[:number].to_i*params[:number].to_i}"
  end

  #Det '/say/:number/:phrase'
  # get "/say/:number/:phrase" do
  #   # :number.to_i.times { puts :phrase }
  # # "#{[:number].to_i.times {puts [:phrase]}"
  # end

  get '/say/:number/:phrase' do
    final = ""
    
    params[:number].to_i.times do
      final = final + "#{params[:phrase]}" + " "
    end
    final
  end
  
  #Get /say/...fivewords
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    sentence
  end
  
  # get "/:word1/:word2/:word3/:word4/:word5" do
  #   "#{params[:word1]}"
  #   + ' ' + [:word2] + ' ' [:word3] + ' ' [:word4] + ' ' + [:word5]
  # end
    #"#{params[:word1] + "#{params[:word2] + "#{params[:word3]"

  #Get :operation/:number1/:number2

  # get ":operation/:number1/:number2" do
    #{}"#{params[:num1].to_i*params[:num1].to_i}"
  # end
  
  get '/:operation/:number1/:number2' do
    case params[:operation]
       when "add"
         "#{params[:number1].to_i + params[:number2].to_i} "
       when "subtract"
         "#{params[:number1].to_i - params[:number2].to_i}"
       when "multiply"
         "#{params[:number1].to_i * params[:number2].to_i}"
       when "divide"
         "#{params[:number1].to_i / params[:number2].to_i}"
       end

  end

end
# ~~~~~~~~~~~~~~~~~

# # This is a sample dynamic route.
#   get "/hello/:name" do
#     @user_name = params[:name]
#     "Hello #{@user_name}!"
#   end
#     # Code your final two routes here:
  
#   #Get Goodbye/:name 
#   get "/goodbye/:name" do
#     @user_name = params[:name]
#     @status = 200
#     "Goodbye, #{@user_name}."
#   end
  
#   get "/multiply/:num1/:num2" do 
#     "#{params[:num1].to_i*params[:num2].to_i}"
#   end 