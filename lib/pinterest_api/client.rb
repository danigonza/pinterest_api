module PinterestApi
  class Client
    API_URL = 'https://api.pinterest.com/v1/'

    def initialize(access_token)
      @access_token = access_token
    end

    def me
      self.get('me/')
    end

    def create_pin(pin_params)
      self.post('pins/', pin_params)
    end

    def boards
      self.get('me/boards/')
    end

    private

    def get(path, parameters = {})
      parameters.merge!(access_token: @access_token)
      JSON.parse RestClient.get(api_url(path), :params => parameters)
    end

    def post(path, parameters = {})
      parameters.merge!(access_token: @access_token)
      JSON.parse RestClient.post(api_url(path), parameters)
    end

    def api_url(path)
      path = path.gsub /^\//, ''
      "#{API_URL}#{path}"
    end

  end
end
