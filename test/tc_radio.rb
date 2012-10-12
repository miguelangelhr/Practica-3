
require 'radio.rb'
require 'test/unit'

class TestRadioCircunsferencia < Test::Unit::TestCase
	
	def test_simple
		assert_in_delta(0.3183098861837907, RadioCircunsferencia.new(2).radio(), 0.01)
	end
	
	def test_failure
		
		#assert_equal(0.3183098861837907, RadioCircunsferencia.new('pepe'), "Se ha pasado una cadena de texto")
		#assert_equal(0.3183098861837907, RadioCircunsferencia.new(-5), "Se ha pasado un numero negativo")

	end
	
end
