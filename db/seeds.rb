# Role Seed

master = Role.create!(name: 'Master')
Role.create!(name: 'Ranger')
Role.create!(name: 'Watcher')
Role.create!(name: 'Adventurer')

# User seed

if !User.where(email: 'john.doe@fireplace.com').first
  User.create!(email: 'john.doe@fireplace.com', password:'123456', name: 'John Doe',
   station: 'Northwatch Outputs', role_id: master.id)
end


# Incident Types

IncidentType.create!(name: 'Fireplace')
IncidentType.create!(name: 'Fishing')
IncidentType.create!(name: 'Fireworks')
IncidentType.create!(name: 'Hunting')
IncidentType.create!(name: 'Lost Person')

# Severity Levels

SeverityLevel.create!(name: 'Critical', color: '#ff5555')
SeverityLevel.create!(name: 'Low', color: '#f0f402')
SeverityLevel.create!(name: 'Medium', color: '#f49f02')
SeverityLevel.create!(name: 'Controlled', color: '#22c409')
