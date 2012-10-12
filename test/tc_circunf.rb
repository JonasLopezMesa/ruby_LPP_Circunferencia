# File: tc_circunferencia.rb

require "circunferencia" #fichero donde está la clase circunferencia sin .rb
require "test/unit" #librería de pruebas unitarias

class TestCircunferencia < Test::Unit::TestCase
    def setup
		@circle = Circunferencia.new()
	end
    
    def teardown
	end
    
	# Si el test es correcto
	def test_correcto
		assert_equal(12, @circle.rad(75.36) )
	end
    
	# Si el test no es correcto
	def test_no_correcto
		assert_equal(10, @circle.rad(75.36) )
	end
    
	# Cuando le paso algo que no es un número
	def test_no_numero
		assert_raise(RuntimeError,"El perimetro tiene que ser un numero positivo") { @circle.rad('a') }
	end
    
	# Cuando le paso un perímetro negativo
	def test_numero_negativo
		assert_raise(RuntimeError, "No puede haber un perimetro negativo") {@circle.rad(-50)}
	end
    
end