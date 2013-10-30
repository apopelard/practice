class CalculationsController < ApplicationController
  def home
  end

  def square
    @the_number = params[:number].to_f
    @answer = @the_number * @the_number
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
    rate = params[:interest_rate].to_f/1200
    pv = params[:present_value].to_f
    np = params[:number_of_payments].to_i
    @payment = ((pv * rate) / (1 - (1 + rate) ** -np))
  end
end
