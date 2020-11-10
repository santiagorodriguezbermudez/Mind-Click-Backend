json.ignore_nil!
json.data do
  json.therapists @therapists do |therapist|
    json.favorite_id therapist[:favorite_id]
    json.id therapist[:id]
    json.full_name therapist[:full_name]
    json.fee therapist[:fee]
    json.description therapist[:description]
    json.years_experience therapist[:years_experience]
    json.therapy_description therapist[:therapy_description]
  end
end