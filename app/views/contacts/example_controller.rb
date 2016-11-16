class ExampleController < ApplicationController
  def fortune_method
    fortunes = "You will be a billionare", 
                "You will be hungry in 1 hour", 
                "You will die in 15 days",
      
    puts fortune.sample
    render 'fortune.html.erb'
  end
end