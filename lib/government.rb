require "government/version"
require "yaml"

module Government
  
  YML_GOVERNMENT = YAML.load_file(File.join(File.dirname(__FILE__),"government", "yml", "government.yml"))
  YML_CURRENCY = YAML.load_file(File.join(File.dirname(__FILE__),"government", "yml", "currency.yml"))

  GOVERNMENT = YML_GOVERNMENT.map { |_, v| v }.flatten.compact.sort

end
