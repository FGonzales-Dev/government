require "government/version"
require "yaml"

module Government
  
  YML_GOVERNMENT = YAML.load_file(File.join(File.dirname(__FILE__),"government", "yml", "government.yml"))
  YML_GMT = YAML.load_file(File.join(File.dirname(__FILE__),"gmt", "yml", "gmt.yml"))

  GOVERNMENT = YML_GOVERNMENT.map { |_, v| v }.flatten.compact.sort
  GMT = YML_GMT.map { |_, v| v }.flatten.compact.sort

end
