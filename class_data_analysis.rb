class ClassDataAnalysis
attr_reader :data

  def initialize (data)
    @data = data
  end

  def lowest_temperature
    data.map{|temp| temp.low}.min
  end

  def highest_temperature
    data.map{|temp| temp.high}.max
  end

  def day_of_lowest_temperature
    low_day = data.detect do |temp|
      temp.low == lowest_temperature
    end
    low_day.day
  end

  def day_of_highest_temperature
    high_day = data.detect do |temp|
      temp.high == highest_temperature
    end
    high_day.day
  end

  def average_temperatures
    data.map{|temp| (temp.high + temp.low)*0.5}
  end


end
