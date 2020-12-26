require 'date'

class ContractDate

  private_class_method :new

  def initialize(date)
    raise TypeError, "wrong argument type #{date.class} (expected #{self.class})" unless date.instance_of?(Date)

    @date = date
  end

  def value
    @date
  end

  def self.conclude
    new(Date.today)
  end

  def self.reconstruct(date)
    new(date)
  end

end
