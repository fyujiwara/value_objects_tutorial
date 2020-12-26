require './amount_excluding_tax'
require './applied_sales_tax_rate'
require './contract_date'
require './sales_tax'
require './sales_tax_apply_rule'
require './amount_including_tax'

contract_date = ContractDate.conclude
amount_excluding_tax = AmountExcludingTax.new(1_000)
applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
puts "#{contract_date.value.to_s}: #{amount_including_tax.value}"

contract_date = ContractDate.reconstruct(Date.new(2019, 10, 1))
amount_excluding_tax = AmountExcludingTax.new(1_000)
applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
puts "#{contract_date.value.to_s}: #{amount_including_tax.value}"

contract_date = ContractDate.reconstruct(Date.new(2019, 9, 30))
amount_excluding_tax = AmountExcludingTax.new(1_000)
applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
puts "#{contract_date.value.to_s}: #{amount_including_tax.value}"

contract_date = ContractDate.reconstruct(Date.new(2014, 4, 1))
amount_excluding_tax = AmountExcludingTax.new(1_000)
applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
puts "#{contract_date.value.to_s}: #{amount_including_tax.value}"

contract_date = ContractDate.reconstruct(Date.new(2014, 3, 31))
amount_excluding_tax = AmountExcludingTax.new(1_000)
applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
puts "#{contract_date.value.to_s}: #{amount_including_tax.value}"

contract_date = ContractDate.reconstruct(Date.new(1997, 4, 1))
amount_excluding_tax = AmountExcludingTax.new(1_000)
applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
puts "#{contract_date.value.to_s}: #{amount_including_tax.value}"

contract_date = ContractDate.reconstruct(Date.new(1997, 3, 31))
amount_excluding_tax = AmountExcludingTax.new(1_000)
applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
puts "#{contract_date.value.to_s}: #{amount_including_tax.value}"

contract_date = ContractDate.reconstruct(Date.new(1989, 4, 1))
amount_excluding_tax = AmountExcludingTax.new(1_000)
applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
puts "#{contract_date.value.to_s}: #{amount_including_tax.value}"

contract_date = ContractDate.reconstruct(Date.new(1989, 3, 31))
amount_excluding_tax = AmountExcludingTax.new(1_000)
applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
puts "#{contract_date.value.to_s}: #{amount_including_tax.value}"
