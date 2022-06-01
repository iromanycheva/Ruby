def authenticate_agent(rank, name, credentials)
  if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
    return true
  end
  return false
end

puts authenticate_agent("007", "James Bond", "Ha")
puts authenticate_agent("007", "somebody", "ha")
