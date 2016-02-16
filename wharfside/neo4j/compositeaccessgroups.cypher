//CREATE SOME COMPOSITE ACCESS GROUPS

//get the initial accessgroups...
MATCH (owners:AccessGroup {name:'owner'})
MATCH (tenants:AccessGroup {name:'tenant'})
MATCH (firstfloor:AccessGroup {name: 'ground floor'})
MATCH (fourthfloor:AccessGroup {name: 'fourth floor'})
MATCH (male:AccessGroup {name:'male'})
MATCH (female:AccessGroup {name:'female'})

//create sets of rule (combinations of access groups)
CREATE  (owners)<-[:IN]-(t1:Rule {name:'ownersandtenants_rule'})-[:IN]->(tenants)
CREATE  (firstfloor)<-[:IN]-(t2:Rule {name:'firstfloor_rule'})
CREATE  (male)<-[:IN]-(t3:Rule {name:'male_rule'})
CREATE  (female)<-[:IN]-(t4:Rule {name:'female_rule'})
CREATE  (fourthfloor)<-[:IN]-(t5:Rule {name:'fourthfloor_rule'})

//create an access group: male tenants and owners on the first floor
CREATE  (cag1:AccessGroup {name:"male tenants and owners on first floor"})
CREATE (cag1)-[:HAS_RULE]->(t1)
CREATE (cag1)-[:HAS_RULE]->(t2)
CREATE (cag1)-[:HAS_RULE]->(t3)

//create an access group: female tenants and owners on the fourth floor
CREATE  (cag2:AccessGroup {name:"female tenants and owners on the fourth floor"})
CREATE (cag2)-[:HAS_RULE]->(t1)
CREATE (cag2)-[:HAS_RULE]->(t4)
CREATE (cag2)-[:HAS_RULE]->(t5);

//now attach all relevant users to the compound access group.
MATCH (cag:AccessGroup)-[:HAS_RULE]->(r1:Rule)
WITH cag, collect(r1) as rules
WITH cag, rules, length(rules) as rulestosatisfy
UNWIND rules as rule
MATCH rule-[:IN]->ag<-[:BELONGS_TO]-(u:User)
WITH cag, rule, rulestosatisfy, collect(DISTINCT(u.userId)) as users
WITH cag, rulestosatisfy, collect({rule:rule, users:users}) as rules
UNWIND rules as users
WITH cag, rulestosatisfy, EXTRACT (user in users.users | user) AS extracted
UNWIND extracted as user
WITH cag, rulestosatisfy, user, length(FILTER(auser in collect(user)  WHERE auser = user)) as counted
WHERE counted = rulestosatisfy
MATCH (u:User {userId:user})
CREATE UNIQUE (u)-[:BELONGS_TO]->(cag);


