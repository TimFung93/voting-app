defmodule VotingApp.Importer do
  def start do
    path = "/assets/data.csv"
    File.stream!(path)
    |> CSV.decode
  end
end