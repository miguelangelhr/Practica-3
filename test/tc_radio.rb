
require 'radio.rb'
require 'test/unit'

class TestRadioCircunsferencia < Test::Unit::TestCase
	
	def test_simple

		assert_in_delta(0.3183098861837907, RadioCircunsferencia.new('2').radio(), 0.0001, "---> Calculado radio para perimetro igual a 2")
		assert_in_delta(0.8276057040778558, RadioCircunsferencia.new('5.2').radio(), 0.0001, "---> Calculado radio para perimetro igual a 5.2")

	end
	
	def test_typecheck

		assert_raises ArgumentError do 
			RadioCircunsferencia.new('pepe')
			puts "\n    ERROR --> El parametro suministrado es un texto, por favor introduzca un numero."
		end
		
		assert_raises ArgumentError do
			RadioCircunsferencia.new('-5')
			puts "\n    ERROR --> El parametro facilitado debe ser un numero positivo." 
		end

	end

end
