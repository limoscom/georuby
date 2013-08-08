# $:.unshift(File.dirname(__FILE__)) #unless
#  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

# fix bc rails overwrote the :concat method in ActionView
class Array
  def concat(b)
    return self if b.empty?
    self[self.length,b.length] = b

    return self
  end
end

require 'geo_ruby/simple_features'

# Require if you need
# require 'geo_ruby/shp4r/shp'
# require 'geo_ruby/gpx4r/gpx'
# require 'geo_ruby/geojson'
# require 'geo_ruby/georss'
# require 'geo_ruby/kml'
