json.extract! payment, :id, :cc_num, :cash_amt, :total, :tip, :created_at, :updated_at
json.url payment_url(payment, format: :json)
