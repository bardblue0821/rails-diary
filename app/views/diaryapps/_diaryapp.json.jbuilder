json.extract! diaryapp, :id, :title, :body, :created_at, :updated_at
json.url diaryapp_url(diaryapp, format: :json)
