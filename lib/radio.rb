=begin
  
  #####################
  # Practica Número 3 #
  #####################
  
  Autor: Miguel Angel Hernández Rodríguez.

=end

class RadioCircunsferencia 
    
	@@perimetro = nil
	@@radio = nil
    
	def initialize(perimetro_user)
	  
		# Evaluamos si es un numero
		if perimetro_user.is_a?(Numeric)
			
			# Evaluamos si es menor que 0
			if (perimetro_user < 0)

				puts "\n    Error ---> El numero #{perimetro_user} debe ser positivo.\n"
			  
			# Si es un numero almacenamos los valores
			else
			  
				@@perimetro = perimetro_user      
				@@radio = calcular_radio(perimetro_user)
				mostrar_radio()
				
			end
		
		else	
			puts "\n    Error ---> El valor suministrado debe ser un numero. \n"
		end
		
	end
	
	def calcular_radio(perimetro)
		
		pi = Math::PI
		return (perimetro/(2*pi))
	  
	end	
	
	def mostrar_radio()
		puts "\n--------------------------------------\n"
		puts "- PRACTICA 3 - Radio Circunsferencia -\n"
		puts "- Resultados                         -\n"
		puts "--------------------------------------\n"
		puts "	---> Para el perimetro: #{@@perimetro} el valor del radio es: #{@@radio} \n\n"
	end
      
end
