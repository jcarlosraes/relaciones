class LoginController < ApplicationController
  	def prueba
	  	puts 'Iniciamos prueba de paso de varibles'
	  	@test = params[:correo]
	  	@test2 = params[:password]
	  	puts @test
	  	puts @test2
	  	puts 'Finaliza prueba de paso de varibles'
	end
	  
	def index
  	end
end
