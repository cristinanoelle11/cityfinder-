require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
   get '/about' do
    erb :index
  end
  get '/home' do
    erb :index
end
 
post '/results' do
  city=params[:city]
  activities=params[:activities]
  transportation=params[:transportation]
  puts city
  puts activities
  puts transportation
  @destination=travel_city(city, activities, transportation)
  if @destination == "Invalid"
  erb :index  
  else
  erb :results
  end
end 
 

end


#   <img class="img-fluid rounded-circle"  alt="">
#                         <a href="https://www.yellowpages.com/marble-canyon-az/transportation-services">
#   <img src="http://4.bp.blogspot.com/-9AHe2UWqt1Y/VC44R5b8c1I/AAAAAAAAMFA/NtSBim8QpyU/s1600/Time-Square.jpg" alt="HTML tutorial" style="width:42px;height:42px;border:0;">
# </a>
