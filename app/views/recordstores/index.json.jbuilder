json.array!(@recordstores) do |recordstore|
  json.extract! recordstore, :id, :name, :street, :code, :city, :contact_name, :contact_number, :contact_email, :contact_fax, :seo_title, :seo_description, :logo_url, :content
  json.url recordstore_url(recordstore, format: :json)
end
