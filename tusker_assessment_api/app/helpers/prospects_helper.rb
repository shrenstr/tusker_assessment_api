module ProspectsHelper
  PROSPECTS_API="http://tuskermarvel.com/prospects.json"

  def get_prospects()
    result = Net::HTTP.get(URI.parse(PROSPECTS_API))
    json = JSON.parse(result)
  end
end