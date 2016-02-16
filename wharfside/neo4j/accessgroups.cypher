//each of these need to be run separately once the inserts above have been run since they're multiple independent queries.

//add all users to their own private access group
MATCH (auser:User) WITH auser CREATE (auser)-[:BELONGS_TO]->(ag:AccessGroup {accessGroupId:auser.userId, name:'private', type:'private'});


//---------------------- add all the users to the 'every' access group-------------------------//
MATCH (auser:User)
MATCH (ag:AccessGroup {name:'all'})
WITH auser, ag
CREATE UNIQUE (auser)-[:BELONGS_TO]->(ag);

//---------------------- add all the users to the 'validated' access group ----------------------//
MATCH (d:Development {developmentId:'1'})
MATCH (authag:AccessGroup {name:"validated"})-[:BELONGS_TO]->(d)
MATCH (auser:User)
WITH auser, authag
CREATE UNIQUE (auser)-[:BELONGS_TO]->(authag);

//---------------------- add all the users to the 'owners' access group-------------------------//

//add all owners to the 'owners' access group
MATCH (buser:User)-[:OWNS]->(Apartment)
MATCH (ag:AccessGroup {name:'owner'})
WITH buser,ag
CREATE UNIQUE (buser)-[:BELONGS_TO]->(ag);


//---------------------- add all the users to the 'residents' access group-------------------------//
MATCH (cuser:User)-[:LIVES_IN]->(Apartment)
MATCH (ag:AccessGroup {name:'resident'})
WITH cuser,ag
CREATE UNIQUE (cuser)-[:BELONGS_TO]->(ag);


//---------------------- add all the users to the 'tenants' access group-------------------------//
MATCH (duser:User)-[:RENTS]->(Apartment)
MATCH (ag:AccessGroup {name:'tenant'})
WITH duser,ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);


//-------add all the floor access groups ------------//
MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'3'})
MATCH (ag:AccessGroup {name:'ground floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'4'})
MATCH (ag:AccessGroup {name:'second floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'5'})
MATCH (ag:AccessGroup {name:'third floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'6'})
MATCH (ag:AccessGroup {name:'fourth floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'7'})
MATCH (ag:AccessGroup {name:'fifth floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'8'})
MATCH (ag:AccessGroup {name:'sixth floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'9'})
MATCH (ag:AccessGroup {name:'seventh floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'10'})
MATCH (ag:AccessGroup {name:'eighth floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'11'})
MATCH (ag:AccessGroup {name:'ninth floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);


MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'12'})
MATCH (ag:AccessGroup {name:'ground floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'13'})
MATCH (ag:AccessGroup {name:'second floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'14'})
MATCH (ag:AccessGroup {name:'third floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'15'})
MATCH (ag:AccessGroup {name:'fourth floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'16'})
MATCH (ag:AccessGroup {name:'fifth floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'17'})
MATCH (ag:AccessGroup {name:'sixth floor'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);


//---------------------- add all users to the relevant block access groups ----------------------------//
MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor)-[:IN]->(b:Block {name:'One Lillie Square'})
MATCH (ag:AccessGroup {name:'One Lillie Square'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);


MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor)-[:IN]->(b:Block {name:'Five Lillie Square'})
MATCH (ag:AccessGroup {name:'Five Lillie Square'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

//---------------------- add all users to the relevant sex access groups ----------------------------//
MATCH (duser:User {sex:'male'})
MATCH (ag:AccessGroup {name:'male'})
WITH duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User {sex:'female'})
MATCH (ag:AccessGroup {name:'female'})
WITH duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

//-----------------attach the anonymous 'space' users to their respective spaces--------------------//
MATCH (lobbyuser:User {userId:'lobby1'})
MATCH (ag:AccessGroup {name:'lobby'})
WITH lobbyuser, ag
CREATE UNIQUE (lobbyuser)-[:BELONGS_TO]->(ag);

MATCH (liftsuser:User {userId:'lifts1'})
MATCH (ag:AccessGroup {name:'lifts'})
WITH liftsuser, ag
CREATE UNIQUE (liftsuser)-[:BELONGS_TO]->(ag);

MATCH (corridoruser:User {userId:'corridor1'})
MATCH (ag:AccessGroup {name:'first floor corridor'})
WITH corridoruser, ag
CREATE UNIQUE (corridoruser)-[:BELONGS_TO]->(ag);

MATCH (parkinguser:User {userId:'parking1'})
MATCH (ag:AccessGroup {name:'underground parking'})
WITH parkinguser, ag
CREATE UNIQUE (parkinguser)-[:BELONGS_TO]->(ag);

//attach all staff to the staff accessgroup
MATCH (staff:User {role:'staff'})
MATCH (ag:AccessGroup {name:'staff'})
WITH staff,ag
CREATE UNIQUE (staff)-[:BELONGS_TO]->(ag);

