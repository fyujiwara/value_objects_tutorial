class AppliedSalesTaxRate

  def initialize(contract_date)
    raise TypeError, "wrong argument type #{contract_date.class} (expected ContractDate)" unless contract_date.instance_of?(ContractDate)

    @rate = sales_tax_apply_rule.apply_rule(contract_date)
  end

  def value
    @rate
  end

  private

  def sales_tax_apply_rule
    SalesTaxApplyRule.new
  end

end
