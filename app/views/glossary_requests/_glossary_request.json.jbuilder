json.extract! glossary_request, :id, :created_at, :updated_at
json.url glossary_request_url(glossary_request, format: :json)