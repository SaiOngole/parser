require 'sinatra/cross_origin'

class Expeditor < ExpeditorBase
  register Sinatra::CrossOrigin

  configure do
    enable :cross_origin
  end

  # CORS config here is only for local development
  # nginx supplies CORS responses in production
  options '*' do
    response.headers['Allow'] = 'HEAD,GET,PUT,POST,DELETE,OPTIONS'
    response.headers['Access-Control-Allow-Headers'] = 'Authorization, X-API-KEY, X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept, Access-Control-Allow-Origin'

    200
  end
end

# require_relative ''
