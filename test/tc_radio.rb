
require 'radio.rb'
require 'test/unit'

class TestRadioCircunsferencia < Test::Unit::TestCase
	
	def test_simple
		
		assert_in_delta(0.3183098861837907, RadioCircunsferencia.new('2').radio(), 0.0001, "---> Calculado radio para perimetro igual a 2")
		assert_in_delta(0.3183098861837907, RadioCircunsferencia.new('pepe').radio(), 0.0001, "---> Se ha pasado una cadena de texto")
		assert_in_delta(0.3183098861837907, RadioCircunsferencia.new('-5').radio(), 0.0001, "---> Se ha pasado un numero negativo")
		assert_in_delta(0.3183098861837907, RadioCircunsferencia.new('pepe52pepe').radio(), 0.0001, "---> Se ha pasado una cadena de texto con numeros")

	end
	
end
