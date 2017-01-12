module ProspectsHelper
  include SourceApiHelper


  def next_delivery
  	#Retrieve data from endpoints.
    prospects = get_prospects()
    available_packages = get_available_packages()

    next_packages = Array.new
    prospects.each do |prospect|
      hash = {}
      hash['contact'] = prospect['contact']
      # For every package available check prospect has not
      # already received any contents from them.
      received = prospect['received']
      hash['next_packages'] = []
      available_packages.each do |package|
        if (package['contents'] & received).empty?
          hash['next_packages'].push(package['code'])
        end
      end
      hash['delivery_city'] = prospect['delivery_city']
      next_packages.push(hash)
    end
    return next_packages
  end
end
