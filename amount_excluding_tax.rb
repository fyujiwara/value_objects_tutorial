class AmountExcludingTax
  MINIMUM_NUMBER = 0.freeze

  def initialize(amount)
    raise RangeError, "#{MINIMUM_NUMBER} is the minimun allowed" unless valid?(amount)

    @amount = amount
  end

  def value
    @amount
  end

  def add(amount_excluding_tax)
    raise TypeError, "wrong argument type #{amount_excluding_tax.class} (expected #{self.class})" unless amount_excluding_tax.instance_of?(AmountExcludingTax)

    new(value + amount_excluding_tax.value)
  end

private

  def valid?(amount)
    MINIMUM_NUMBER <= amount
  end

end
