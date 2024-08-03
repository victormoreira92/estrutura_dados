class JogoForca
  attr_accessor :tentativas

  def initialize
    @banco_palavras = %w[basquete volei futebol judo esgrima]
    @palavra_do_jogo = @banco_palavras.sample
    @tentativas = 1
    mensagem
    forca
  end

  def mensagem
   print "Bem vindo ao jogo da Forca!!\n"
   print "Tente advinhar qual a letra está presente na palavra\n"
  end

  def forca
    letras_digitadas = []
    letras_descobertas = []

    p @palavra_do_jogo

    while @tentativas <= @palavra_do_jogo.length
      print "Rodada ##{tentativas}\n"
      print "#{mostrar_palavra(letras_descobertas)}\n"
      print "Digite a seu chute: "
      jogada = gets.chomp
      letras_digitadas << jogada
      letras_descobertas += verfificar_jogada(jogada)
      print "Palavras digitadas:#{letras_digitadas.join(' ')}\n"
      printf "\n"
      @tentativas += 1
    end
  end

  def verfificar_jogada(jogada)
    acertos = []
    if @palavra_do_jogo.index(jogada)
      @palavra_do_jogo.chars.each_with_index do |char, index|
        acertos << index if char == jogada
      end
    end
    acertos
  end

  def mostrar_palavra(letras_descobertas = [])
    palavra = @palavra_do_jogo.gsub(/[a-zA-Z]/, '_')

    if letras_descobertas.empty?
      return palavra
    end

    letras_descobertas.each do |index|
      palavra[index] = @palavra_do_jogo[index]
    end

    palavra
  end


end

forca = JogoForca.new
