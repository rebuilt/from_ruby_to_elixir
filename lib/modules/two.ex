defmodule Examples.Modules.Two do
  def hello do
    :world
  end

  def hello("Mike") do
    "Hello Mike, Hello Joe"
  end

  def welcome(name) do
    "Welcome, #{name}"
  end
end


