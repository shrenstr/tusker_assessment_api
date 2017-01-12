module SourceApiHelper
  PROSPECTS_API="http://tuskermarvel.com/prospects.json"
  AVAILABLE_PACKAGES_API="http://tuskermarvel.com/packages.json"

  def get_prospects()
    json = fetch_api_data(PROSPECTS_API)
  end

  def get_available_packages()
    json = fetch_api_data(AVAILABLE_PACKAGES_API)
  end

  private

  def fetch_api_data(api_endpoint)
  	result = Net::HTTP.get(URI.parse(api_endpoint))
  	JSON.parse(result)
  end
end
