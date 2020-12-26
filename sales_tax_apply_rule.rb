require 'date'
require 'bigdecimal'

class SalesTaxApplyRule

  attr_reader :sales_taxes

  def initialize
    @sales_taxes = []
    @sales_taxes << SalesTax.new(enforcement_date: Date.new(2019, 10, 1), rate: BigDecimal("0.10"))
    @sales_taxes << SalesTax.new(enforcement_date: Date.new(2014, 4, 1), rate: BigDecimal("0.08"))
    @sales_taxes << SalesTax.new(enforcement_date: Date.new(1997, 4, 1), rate: BigDecimal("0.05"))
    @sales_taxes << SalesTax.new(enforcement_date: Date.new(1989, 4, 1), rate: BigDecimal("0.03"))
  end

  def apply_rule(contract_date)
    raise TypeError, "wrong argument type #{contract_date.class} (expected ContractDate)" unless contract_date.instance_of?(ContractDate)

    corresponded = sales_taxes.find{ |sales_tax| sales_tax.enforcement_date <= contract_date.value }
    corresponded.nil? ? BigDecimal("0.00") : corresponded.rate
  end

end
