class SayController < ApplicationController
  def hello
    @time = Time.now
    @date = "#{@time.day}/#{@time.month}/#{@time.year}"
    @year = @time.year
  end

  def goodbye
    @time = Time.now
    @hour = @time.hour
  end

  def about
    
  end

end
