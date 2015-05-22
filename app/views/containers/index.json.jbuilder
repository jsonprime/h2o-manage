json.array!(@containers) do |container|
  json.extract! container, :id, :description, :volume_ml, :volume_oz, :refillable, :last_refill_date, :expiration_date, :empty, :user_id
  json.url container_url(container, format: :json)
end
