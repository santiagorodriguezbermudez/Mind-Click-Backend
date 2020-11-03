json.ignore_nil!
json.data do
  json.therapists @therapists do |therapist|
    json.id therapist.id
    json.full_name therapist.full_name
    json.personality_traits therapist.personality_traits
    json.email therapist.email
    json.fee therapist.fee
    json.description therapist.description
    json.professional_description therapist.professional_description
    json.years_experience therapist.years_experience
    json.therapy_description therapist.therapy_description
    json.created_at therapist.created_at
  end
end