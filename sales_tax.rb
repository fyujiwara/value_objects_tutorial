require 'date'
require 'bigdecimal'

class SalesTax
  MINIMUM_RATE = 0

  attr_reader :enforcement_date, :rate

  def initialize(enforcement_date:, rate:)
    raise TypeError, "wrong argument type #{enforcement_date.class} (expected Date)" unless enforcement_date.instance_of?(Date)
    raise TypeError, "wrong argument type #{rate.class} (expected BigDecimal)" unless rate.instance_of?(BigDecimal)

    raise RangeError, "#{MINIMUM_RATE} is the minimum allowed for rate" unless valid_rate?(rate)

    @enforcement_date = enforcement_date
    @rate = rate
  end

  private

  def valid_rate?(rate)
    MINIMUM_RATE <= rate
  end

end
