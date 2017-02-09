json.extract! request, :id, :request_reason, :requester, :decision_reason, :created_at, :updated_at
json.url request_url(request, format: :json)