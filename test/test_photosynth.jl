


# deftest_hitinhib():
temps = [-10, 0.0, 10.0, 20.0, 30.0, 55.0]

for t in temps
  @test hiTinhib(t) >= 0.5
end


# deftest_darkinhib():
irrs = [-10, 0.0, 10.0, 20.0, 30.0, 55.0]

for i in irrs
  if i < 0.0
    @test darkinhib(i) == 0.0
  else
    @test darkinhib(i) > 0.0
  end
end

