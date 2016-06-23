


# coding: utf-8

%w{
  basics posts institutes pages projects slides linkers
}.each do |part|
  require File.expand_path(File.dirname(__FILE__))+"/seeds/#{part}.rb"
end


