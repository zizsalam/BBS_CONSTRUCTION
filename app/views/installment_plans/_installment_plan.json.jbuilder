json.extract! installment_plan, :id, :user_id, :property_id, :total_amount, :installment_amount, :paid, :due_date, :created_at, :updated_at
json.url installment_plan_url(installment_plan, format: :json)
