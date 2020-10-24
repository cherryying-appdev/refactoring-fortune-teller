class FortunesController < ApplicationController
  def horoscopes
    all_zodiacs = Zodiac.list
    sign = params.fetch("the_sign").to_sym
    this_zodiac = all_zodiacs.fetch(sign)
    @horoscope = this_zodiac.fetch(:horoscope)
    @zodiac_name = this_zodiac.fetch(:name)

    @array_of_numbers = Zodiac.lucky_numbers

    render({ :template => "fortune_templates/zodiac.html.erb" })
  end
end