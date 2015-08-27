# <div><iframe width="500px" title="Public Recycling Bins" height="425px" src="https://data.cityofnewyork.us/w/sxx4-xhzg/25te-f2tw?cur=BZhoCkzw311&from=root" frameborder="0"scrolling="no"><a href="https://data.cityofnewyork.us/Environment/Public-Recycling-Bins/sxx4-xhzg" title="Public Recycling Bins" target="_blank">Public Recycling Bins</a></iframe><p><a href="http://www.socrata.com/" target="_blank">Powered by Socrata</a></p></div>
class Recycle
#   bin_hash =
#     {
#       "40.888353, -73.840908" => "E. 223 Street and De Reimer Avenue"
#       "40.688204, -73.966559" => "Underwood Park"
#       "40.712796, -74.004816" => "31 Chambers Street"
#     }
#   NYC_array = []
#   NYC_array.push(bin_hash)
  bins = [{:zip_code => 10466}]
  attr_accessor :address, :latitiude, :longitude, :plastic
#   geocoded_by :address
#   after_validation :geocode

  def initialize(address, plastic)
    @address = address
    @plastic = plastic
  end
end
