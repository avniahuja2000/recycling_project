# require "geocoder/railtie"
# Geocoder::Railtie.insert
class Recycle
  attr_accessor :address, :latitiude, :longitude, :plastic, :zip_code
  attr_reader :bins_results
#   geocoded_by :address
#   after_validation :geocode

  def initialize(zip_code)
    @bins = [{:zip_code => 10466, :address => "E. 223 Street and De Reimer Avenue", :bin_number => "Bin #1"}, {:zip_code => 11238, :address => "Underwood Park", :bin_number => "Bin #2"}, {:zip_code => 10007, :address => "31 Chambers Street", :bin_number => "Bin #3"}]
    @bins_results = []
    #@address = address
    #@plastic = plastic
    @zip_code = zip_code
  end

  def return_bins
    if @zip_code == 10007
      @bins.each do |bin|
          bin.each do |key, value|
            if value == 10007
              @bins_results.push(bin)
            end
          end
      end
      elsif @zip_code == 10466
        @bins.each do |bin|
          bin.each do |key, value|
            if value == 10466
              @bins_results.push(bin)
            end
          end
        end
      elsif @zip_code == 11238
         @bins.each do |bin|
          bin.each do |key, value|
            if value == 11238
              @bins_results.push(bin)
            end
          end
         end
      end
    return @bins_results
  end
end