require 'sinatra'
require 'grape'
module DNT
  class APIv1 < Grape::API
    version 'v1', :path
    format :json
    Dir.glob('apis/v1/**/*.rb') { |r| load r }
  end
  class Web < Sinatra::Base
    get '/' do
      "The Date 'n' Time REST microservice."
    end
  end
end
