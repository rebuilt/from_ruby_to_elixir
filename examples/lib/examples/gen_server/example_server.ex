def announce(server \\__MODULE__) do
  GenServer.cast(server, :announce)
end

def add(a,b, server \\__MODULE__) do
  GenServer.call(server, {:add, a, b})
end
