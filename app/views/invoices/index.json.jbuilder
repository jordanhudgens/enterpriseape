json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :date, :company, :tax, :salesperson
  json.url invoice_url(invoice, format: :json)
end
