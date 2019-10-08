require 'sinatra/base'

class DiaryManager < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/save' do
    $title = params[:title]
    @entry = params[:entry]
    redirect '/entries'
  end
  
  get '/entries' do
    @title = $title
    erb :entries
  end

  run! if app_file == $PROGRAM_NAME
end
