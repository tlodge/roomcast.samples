//create admin user
CREATE (admin1:User {userId:'u1',password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  username:'system'});

//create concierge office space c0ncierge0ffice
MATCH (d:Development {name:'Wharfside'})
WITH d
CREATE (office:User {userId:'conciergeoffice',password:'$2a$10$dvdpVB4nu92lAxoAaSfHtucFJZDteH3Ehi3kHJtApzf3SH53Q4bWS', username:'conciergeoffice'})-[:AFFILIATED_WITH]->(d);

//create staff (just the concierge for now!) j0nAth0n
MATCH (d:Development {name:'Wharfside'})
WITH d
CREATE (wharfsidestaff:Staff {staffId:'s2', name:'wharfside staff'})
CREATE (wharfsidestaff)-[:WORK_IN]->(d)
CREATE (wharfsideconcierge:Group {groupId:'g1',name:'wharfside concierges'})
CREATE (wharfsideconcierge)-[:MEMBER_OF]->(wharfsidestaff)
CREATE (concierge1:User {userId:'u2',role:'staff', password:'$2a$10$pWxPclcYDDt7TgFXkquh9OdxD1jGrqpaBFJuLMeXxNw9M95fbSKBG', username:'concierge', email:'tlodge@gmail.com', mobile:'07972639571', firstname:'Jonathan', surname:''})-[:AFFILIATED_WITH]->(d)
CREATE (concierge1)-[:BELONGS_TO]->(wharfsideconcierge);


//create a few test users t3stus3r1 etc
MATCH (d:Development {name:'Wharfside'})
WITH d
CREATE (user1:User {userId:'u3',username:'resident1', firstname:'Test Resident One', surname:'Smith', email:'tlodge@gmail.com', mobile:'07972639571', role:'user', created:1441890901000, validated:1441890951000,  password:'$2a$10$n1YltXZNq3qUb5d.21KgvOHvoMWueeGB6FcWrOf.ivZcdK.zt95SS', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user1:User {userId:'u4',username:'resident2', firstname:'Test Resident Two', surname:'Smithy', email:'tlodge@gmail.com', mobile:'07972639571', role:'user', created:1441890901000, validated:1441890951000,  password:'$2a$10$sS6UsIJHkB9UYfHZzMBZke7iXXyQ1sX5hsl7Tb5LkjhzjHlV.UpL2', sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user1:User {userId:'u5',username:'resident3', firstname:'Test Resident Three', surname:'Smithee', email:'tlodge@gmail.com', mobile:'07972639571', role:'user', created:1441890901000, validated:1441890951000,  password:'$2a$10$W2Yaa4JpsMfsI6zGC/3Piei5dNjDCZtbb/Blgq.IZ93zf7fhUNFoW', sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user1:User {userId:'u6',username:'resident4', firstname:'Test Resident Four', surname:'Smyte', email:'tlodge@gmail.com', mobile:'07972639571', role:'user', created:1441890901000, validated:1441890951000,  password:'$2a$10$wAh.Khr3Tl/NKE45Y7LnT.0ltmlgdbID4ctC9fexLROIJYFZkOepu', sex:'female'})-[:AFFILIATED_WITH]->(d);

//attach test users to apartments
MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'73'}) 
MATCH (u:User {userId:'u3'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'119'}) 
MATCH (u:User {userId:'u4'})
CREATE (u)-[:OWNS]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'183'}) 
MATCH (u:User {userId:'u5'})
CREATE (u)-[:OWNS]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'u6'}) 
MATCH (u:User {userId:'56'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);
