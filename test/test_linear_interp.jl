
# import numpy as np
# from scipy.interpolate import interp1d


# deftest_linear_interp():

@testset "linear_interp" begin
  n = 10
  x = 0.0:1.0:n-1 |> collect
  y = deepcopy(x)
  new_x = x .+ 0.5

  res = zeros(n - 1)
  for i = 1:n-1
    res[i] = linear_interp(new_x[i], x[i], x[i+1], y[i], y[i+1])
  end

  @test res == new_x[1:n-1]

end

