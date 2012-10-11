
require_relative '../lib/radio.rb'
require 'test/unit'

class TestRadioCiscunsferencia < Test::Unit::TestCase
	
	def test_simple
		assert_equal(0.3183098861837907, RadioCircunsferencia.new(2))
	end
	
	def test_failure
		
		assert_equal(0.3183098861837907, RadioCircunsferencia.new('pepe'), "Se ha pasado una cadena de texto")
		assert_equal(0.3183098861837907, RadioCircunsferencia.new(-5), "Se ha pasado un numero negativo")

	end
	
end
