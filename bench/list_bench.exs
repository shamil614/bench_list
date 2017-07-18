defmodule ListBench do
  use Benchfella

  @list Enum.to_list(1..10000)

  bench "head tail" do
    BenchList.head_tail(@list)
  end

  bench "map list" do
    BenchList.map_list(@list)
  end
end
