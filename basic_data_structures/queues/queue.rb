# frozen_string_literal: true

# QueueList é uma implementação simples de uma fila (queue) em Ruby,
# utilizando um array interno para armazenar os elementos.
# Segue o princípio FIFO (First In, First Out), onde o primeiro elemento inserido
# é o primeiro a ser removido.
#
# Métodos disponíveis:
# - enqueue(element): Adiciona um elemento ao final da fila.
# - dequeue: Remove e retorna o elemento do início da fila.
# - peek: Retorna o primeiro elemento da fila sem removê-lo.
# - is_empty?: Verifica se a fila está vazia.
class QueueList
  attr_reader :head

  def initialize
    @head = []
  end

  # @param {Object} element
  def enqueue(element)
    head.push(element)
  end

  # @return {Object}
  def dequeue
    head.shift
  end

  # @return {Object}
  def peek
    head.first
  end

  # @return {Boolean}
  def is_empty?
    head.empty?
  end
end
