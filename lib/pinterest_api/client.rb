module PinterestApi
  class Client
    API_URL = 'https://api.pinterest.com/v1/'

    def initialize(access_token)
      @access_token = access_token
    end

    def me
      get('me/')
    end

    def create_pin(pin_params)
      post('pins/', pin_params)
    end

    def boards
      get('me/boards/')
    end

    private

    def get(path, parameters = {})
      JSON.parse RestClient.get(api_url(path, @access_token), :params => parameters)
    end

    def post(path, parameters = {})
      JSON.parse RestClient.post(api_url(path, @access_token), parameters)
    end

    def api_url(path, token)
      path = path.gsub /^\//, ''
      "#{API_URL}#{path}?access_token=#{token}"
    end

  end
end
