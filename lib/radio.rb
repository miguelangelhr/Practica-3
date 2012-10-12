=begin
  
  #####################
  # Practica Número 4 #
  #####################
  
  Autor: Miguel Angel Hernández Rodríguez.

=end

class RadioCircunsferencia 

	@@perimetro = 0.0
	@@radio = 0.0
        
	def initialize(perimetro)

		@perimetro = perimetro.to_f
		
		# Evaluamos si no es un numero mostramos un error
		if (@perimetro == 0.0)
			
			puts "\n    Error ---> El valor suministrado debe ser un numero. \n"

		# Evaluamos el tipo de numero que es(positivo o negativo).
		else	

			# Si el numero es negativo mostramos un error
			if (@perimetro < 0.0)

				puts "\n    Error ---> El numero #{@perimetro} debe ser positivo.\n"

			 # Si es un numero positivo almacenamos los valores
                        else

				@@perimetro = @perimetro
				@@radio = calcular_radio()

		                puts "\n--------------------------------------\n"
                		puts "- PRACTICA 4 - Radio Circunsferencia -\n"
                		puts "- Resultados                         -\n"
               			puts "--------------------------------------\n"
                		puts "  ---> Para el perimetro: #{@@perimetro} el valor del radio es: #{@@radio} \n\n"

                        end
			
		end
		
	end
	
	def calcular_radio()
		
		pi = Math::PI
		return (@@perimetro/(2*pi))
	  
	end	

	def radio

		@@radio
	
	end

end
