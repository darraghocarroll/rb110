munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |person, details|
  p person
  p details
  if person[1]["age"] < 20
    person[1]["age_group"] = "kid"
  elsif person[1]["age"] < 100
    person[1]["age_group"] = "adult"
  else 
    person[1]["age_group"] = "senior"
  end
end 




