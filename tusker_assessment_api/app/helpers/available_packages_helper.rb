module AvailablePackagesHelper
  include SourceApiHelper, ProspectsHelper

  def city_delivery
  	cities_delivery = next_delivery()
    cities_sorted = cities_delivery.sort_by{ |hash| hash['delivery_city'] }

    city_packages = Array.new
    cities_sorted.each do |delivery|
      array_index = city_packages.index(
                      city_packages.find {|h| h['delivery_city'].to_s == delivery['delivery_city'].to_s})
      if array_index.nil?
      	hash = {}
        hash['delivery_city'] = delivery['delivery_city']
        hash['next_packages'] = delivery['next_packages']
        city_packages.push(hash)
      else
        city_packages[array_index]['next_packages'] = (
               city_packages[array_index]['next_packages'].concat(delivery['next_packages'])).uniq
      end
    end
   return city_packages
  end
end
