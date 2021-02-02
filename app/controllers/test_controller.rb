class TestController < ApplicationController
  def index
    @test_var = "Testowa zmienna"
    @cars = ["audi", "bmw", "volvo"]
  end
  def kurs
    redirect_to('https://www.strefakursow.pl')
  end
end
