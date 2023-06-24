defmodule Examples.Spawn.Infinite do
  def start do
    spawn(& loop/0)
  end

  defp loop do
    receive do 
      {:add, a, b} -> 
        IO.puts "#{a} + #{b} = #{a + b}"
        loop()

      :memory -> 
        {:memory, bytes} = Process.info(self(), :memory)
        IO.puts("Memory used: #{bytes}")
        loop()

      :crash -> 
        raise "I crashed"

      :bye -> 
        IO.puts("Bye!")
    end
  end
end
