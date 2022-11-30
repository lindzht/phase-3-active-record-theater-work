
puts "seeding..."

character1= Role.create(character_name:"Gabriela") 
character2= Role.create(character_name:"Lindsay")

Audition.create(actor:"Test1",location:"New York",phone:1243224 ,hired: true, role_id: character1.id)
Audition.create(actor:"Test2",location:"Los Angeles",phone: 34343334,hired: false, role_id: character2.id)
Audition.create(actor:"Test3",location:"Lima",phone: 43434232 ,hired: false, role_id: character1.id)
Audition.create(actor:"audition1",location:"New York",phone:1243224 ,hired: true, role_id: character1.id)
Audition.create(actor:"audition2",location:"Los Angeles",phone: 34343334,hired: false, role_id: character2.id)
Audition.create(actor:"audition3",location:"Lima",phone: 43434232 ,hired: false, role_id: character1.id)




puts "seeded baby!"