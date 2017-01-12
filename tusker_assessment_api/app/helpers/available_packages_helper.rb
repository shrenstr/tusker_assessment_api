module AvailablePackagesHelper
  AVAILABLE_PACKAGES_API="http://tuskermarvel.com/packages.json"

  def get_available_packages()
    result = Net::HTTP.get(URI.parse(AVAILABLE_PACKAGES_API))
    json = JSON.parse(result)
  end
end