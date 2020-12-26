class AmountIncludingTax

  def initialize(amount_excluding_tax: , applied_sales_tax_rate:)
    raise TypeError, "wrong argument type #{amount_excluding_tax.class} (expected AmountExcludingTax)" unless amount_excluding_tax.instance_of?(AmountExcludingTax)
    raise TypeError, "wrong argument type #{applied_sales_tax_rate.class} (expected AppliedSalesTaxRate)" unless applied_sales_tax_rate.instance_of?(AppliedSalesTaxRate)

    @amount = (amount_excluding_tax.value * (1 + (applied_sales_tax_rate.value))).to_i
  end

  def value
    @amount
  end

end
