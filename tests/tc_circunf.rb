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
	def test_incorrecto
		assert_equal(10, @circle.rad(75.36) )
	end
    

    
end