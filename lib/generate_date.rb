require './lib/generate_number'
class GenerateDate < GenerateNumber

  def self.date
    Time.now.strftime("%d%m%y")
  end
end
