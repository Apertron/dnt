module DNT
  class APIv1 < Grape::API
    desc "About the microservice."
    get :about do
      { source: "http://git.apertron.net/cgit.cgi/dnt/",
        docs: "http://git.apertron.net/cgit.cgi/dnt/" }
    end
  end
end
