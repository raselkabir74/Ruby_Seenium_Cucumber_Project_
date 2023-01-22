require 'typhoeus'

@headers = { 'Content-Type': "application/json" }

class ApiPage
  def get_api_base_url
    $config['api_base_url']
  end

  def create_single_user_using_api(user_name, job)
    body = {
      "name": user_name,
      "job": job
    }
    Typhoeus.post(get_api_base_url + "/api/users", body: body, header: @headers)
  end
end