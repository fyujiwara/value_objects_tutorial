require 'spec_helper'

RSpec.describe 'AmountIncludingTax' do

  it '購入日が本日であれば、10%の課税された金額が返えること' do
    contract_date = ContractDate.conclude
    amount_excluding_tax = AmountExcludingTax.new(1_000)
    applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
    amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
    expect(amount_including_tax.value).to eq 1_100
  end

  it '購入日が2019-10-1であれば、10%の課税された金額が返えること' do
    contract_date = ContractDate.reconstruct(Date.new(2019, 10, 1))
    amount_excluding_tax = AmountExcludingTax.new(1_000)
    applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
    amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
    expect(amount_including_tax.value).to eq 1_100
  end

  it '購入日が2019-9-30であれば、8%の課税された金額が返えること' do
    contract_date = ContractDate.reconstruct(Date.new(2019, 9, 30))
    amount_excluding_tax = AmountExcludingTax.new(1_000)
    applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
    amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
    expect(amount_including_tax.value).to eq 1_080
  end

  it '購入日が2014-4-1であれば、8%の課税された金額が返えること' do
    contract_date = ContractDate.reconstruct(Date.new(2014, 4, 1))
    amount_excluding_tax = AmountExcludingTax.new(1_000)
    applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
    amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
    expect(amount_including_tax.value).to eq 1_080
  end

  it '購入日が2014-3-31であれば、5%の課税された金額が返えること' do
    contract_date = ContractDate.reconstruct(Date.new(2014, 3, 31))
    amount_excluding_tax = AmountExcludingTax.new(1_000)
    applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
    amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
    expect(amount_including_tax.value).to eq 1_050
  end

  it '購入日が1997-4-1であれば、5%の課税された金額が返えること' do
    contract_date = ContractDate.reconstruct(Date.new(1997, 4, 1))
    amount_excluding_tax = AmountExcludingTax.new(1_000)
    applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
    amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
    expect(amount_including_tax.value).to eq 1_050
  end

  it '購入日が1997-3-31であれば、3%の課税された金額が返えること' do
    contract_date = ContractDate.reconstruct(Date.new(1997, 3, 31))
    amount_excluding_tax = AmountExcludingTax.new(1_000)
    applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
    amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
    expect(amount_including_tax.value).to eq 1_030
  end

  it '購入日が1989-4-1であれば、3%の課税された金額が返えること' do
    contract_date = ContractDate.reconstruct(Date.new(1989, 4, 1))
    amount_excluding_tax = AmountExcludingTax.new(1_000)
    applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
    amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
    expect(amount_including_tax.value).to eq 1_030
  end

  it '購入日が1989-3-31であれば、0%の課税された金額が返えること' do
    contract_date = ContractDate.reconstruct(Date.new(1989, 3, 31))
    amount_excluding_tax = AmountExcludingTax.new(1_000)
    applied_sales_tax_rate = AppliedSalesTaxRate.new(contract_date)
    amount_including_tax = AmountIncludingTax.new(amount_excluding_tax: amount_excluding_tax, applied_sales_tax_rate: applied_sales_tax_rate)
    expect(amount_including_tax.value).to eq 1_000
  end

end
