class FortunesController < ApplicationController
  def horoscopes
    all_zodiacs = Zodiac.list
    @this_zodiac = all_zodiacs.fetch(params.fetch(:the_sign).to_sym)
    @the_name = @this_zodiac.fetch(:name)
    @horoscope = @this_zodiac.fetch(:horoscope)

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)

      @array_of_numbers.push(another_number)
    end

    render({ :template => "flame_templates/zodiacs.html.erb" })
  end
end
