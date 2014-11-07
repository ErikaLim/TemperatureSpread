class ArrayDataAnalysis
  attr_reader :data

  def initialize (data)
    @data = data
  end

  def lowest_temperature
    data.map{|a| a[2]}.min
  end

  def highest_temperature
    data.map{|a| a[1]}.max
  end

  def day_of_lowest_temperature
    low_array = data.detect {|a| a.include?(lowest_temperature)}
    low_day = low_array.first
  end

  def day_of_highest_temperature
    high_array = data.detect {|a| a.include?(highest_temperature)}
    high_day = high_array.first
  end

  def average_temperatures
    data.map{|a| (a[1]+a[2]) * 0.5 }
  end

end
