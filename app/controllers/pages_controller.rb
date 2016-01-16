class PagesController < ApplicationController
  def ask
  end

  def resp
    @num = pages_params[:num]
    if @num =~ /\A-?\d+\Z/
      @sound = sound(@num)
    else
      @error = "You have provided an invalid number."
    end
  end

  private

    def sound(num)
      num = num.to_i
      if num % 15 == 0 then "FizzBuzz"
      elsif num % 5 == 0 then "Buzz"
      elsif num % 3 == 0 then "Fizz"
      else num
      end
    end

    def pages_params
      params.permit(:num)
    end
end
