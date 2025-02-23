# Queue 

Este repositório contém uma implementação simples de uma fila (`QueueList`) em Ruby, além de soluções para desafios do LeetCode.

### 🛠 Métodos Disponíveis
- `enqueue(element)`: Adiciona um elemento ao final da fila.
- `dequeue`: Remove e retorna o elemento do início da fila.
- `peek`: Retorna o primeiro elemento da fila sem removê-lo.
- `is_empty?`: Retorna `true` se a fila estiver vazia, caso contrário, `false`.

### 🚀 Exemplo de Uso

```ruby
queue = QueueList.new
queue.enqueue(10)
queue.enqueue(20)
puts queue.peek      # Saída: 10
puts queue.dequeue   # Saída: 10
puts queue.is_empty? # Saída: false
