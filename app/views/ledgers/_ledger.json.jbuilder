json.extract! ledger, :id, :date, :payer, :check_details, :department, :amount, :cobra, :notes, :created_at, :updated_at
json.url ledger_url(ledger, format: :json)
