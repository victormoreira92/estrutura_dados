def cedulas(valor)
  cedulas = [100,50,20,10,5,2,1]
  val = valor
  mensagem = "#{valor}\n"

  cedulas.each do |cedula|
      mensagem += "#{val/cedula} nota(s) de R$ #{cedula},00\n"
      val = val%cedula
  end
  mensagem

end

valor = gets.chomp.to_i
puts cedulas(valor)
