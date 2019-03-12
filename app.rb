require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab!"
      "let's navigate to the '/new'"
      erb '/new'
    end

    post 'pirates' do
      @pirate = Pirate.new(params)
      @ships = Ship.new(args)

      erb :show
    end

  end
end
