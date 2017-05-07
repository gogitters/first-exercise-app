class PagesController < ApplicationController
  @@count = 0
  def fortune_method
    fortunes = ["You will become a great developer pretty soon", "You will give Jordan a penny", "Give Sami a cookie because she likes sweets."]
    # fortunes.shuffle!
    @fortune = fortunes.sample
    render "fortune_view.html.erb"
  end

  def lotto_method
    @@count += 1
    numbers = [*1..60]
    numbers.shuffle!
    @count = @@count
    @lotto = numbers.sample(6).sort
    render "lotto_view.html.erb"
  end

  def counter_method
    @@count += 1
    @count = @@count
    render "counter_view.html.erb"
  end

  def beer_method
    @number = 100
    render "beer_view.html.erb"
  end
end
