require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'pirates/new'
    end

    get '/new' do
      erb :'pirates/show'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = Ship.new(params)

      erb :'pirates/show'
    end

  end
end
