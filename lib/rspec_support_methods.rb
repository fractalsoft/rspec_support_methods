Dir["#{__dir__}/rspec_support_methods/*.rb"].each { |file| require file }

module RspecSupportMethods
  include Randomizer
  include TemporaryFile
end
