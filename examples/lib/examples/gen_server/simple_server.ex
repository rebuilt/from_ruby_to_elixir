defmodule Examples.GenServer.SimpleServer do
  use GenServer
  require Logger

  def start_link(init_args, name: name) do
    GenServer.start_link(__MODULE__, init_args, name: name)
  end

  def init(speaker: speaker) do
    {:ok, %{speaker: speaker, last_result: nil}}
  end

  def handle_cast(:announce, state = %{speaker: speaker, last_result: result}) do
    Logger.info("#{speaker}: The last result I computed was #{result}")
    {:noreply, state}
  end

  def handle_call({:add, a, b}, _from, state ) do
    result = a + b
    {:reply, result, %{state | last_result: result}}
  end
end
