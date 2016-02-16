MATCH (d:Development {name:'Wharfside'})
WITH d
CREATE (OwnersAG:AccessGroup {accessGroupId:'122', name:'owner', type:'occupancy', prefix:'is'})
CREATE (TenantsAG:AccessGroup {accessGroupId:'123',name:'tenant', type:'occupancy', prefix:'is'})
CREATE (ResidentsAG:AccessGroup {accessGroupId:'124',name:'resident', type:'occupancy', prefix:'is'})

//relates to developmentId
CREATE (AllAG:AccessGroup {accessGroupId:'1', name:'all', type:'development', prefix:'in'})
CREATE (SouthBlockAG:AccessGroup {accessGroupId:'125',name: 'South Block', type:'block', prefix:'in'})
CREATE (NorthBlockAG:AccessGroup {accessGroupId:'125a',name: 'North Block', type:'block', prefix:'in'})

//floor acccess groups!
CREATE (a1stFloorAG:AccessGroup {accessGroupId:'126',name:'1st', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a2ndFloorAG:AccessGroup {accessGroupId:'127',name:'2nd', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a3rdFloorAG:AccessGroup {accessGroupId:'128',name:'3rd', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a4thFloorAG:AccessGroup {accessGroupId:'129',name:'4th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a5thFloorAG:AccessGroup {accessGroupId:'130',name:'5th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a6thFloorAG:AccessGroup {accessGroupId:'131',name:'6th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a7thFloorAG:AccessGroup {accessGroupId:'132',name:'7th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a8thFloorAG:AccessGroup {accessGroupId:'133',name:'8th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a9thFloorAG:AccessGroup {accessGroupId:'134',name:'9th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a10thFloorAG:AccessGroup {accessGroupId:'135',name:'10th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a11thFloorAG:AccessGroup {accessGroupId:'136',name:'11th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a12thFloorAG:AccessGroup {accessGroupId:'137',name:'12th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a13thFloorAG:AccessGroup {accessGroupId:'138',name:'13th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a14thFloorAG:AccessGroup {accessGroupId:'139',name:'14th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a15thFloorAG:AccessGroup {accessGroupId:'140',name:'15th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a16thFloorAG:AccessGroup {accessGroupId:'141',name:'16th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a17thFloorAG:AccessGroup {accessGroupId:'142',name:'17th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a18thFloorAG:AccessGroup {accessGroupId:'143',name:'18th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a19thFloorAG:AccessGroup {accessGroupId:'144',name:'19th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a20thFloorAG:AccessGroup {accessGroupId:'145',name:'20th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a21stFloorAG:AccessGroup {accessGroupId:'146',name:'21st', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a22ndFloorAG:AccessGroup {accessGroupId:'147',name:'22nd', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a23rdFloorAG:AccessGroup {accessGroupId:'148',name:'23rd', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)
CREATE (a24thFloorAG:AccessGroup {accessGroupId:'149',name:'24th', type:'floor', prefix:'on'})-[:BELONGS_TO]->(d)

CREATE (MaleAccessGroup:AccessGroup {accessGroupId:'150',name: 'male', type:'attribute', prefix:'is'})
CREATE (FemaleAccessGroup:AccessGroup {accessGroupId:'151',name: 'female', type:'attribute', prefix:'is'})
CREATE (NewAccessGroup:AccessGroup {accessGroupId:'152',name: 'newly joined', type:'attribute', prefix:'is'})

CREATE (LobbyAccessGroup:AccessGroup {accessGroupId:'153', name:'lobby', type:'space', prefix:'in' })
CREATE (LiftsAccessGroup:AccessGroup {accessGroupId:'154', name:'lifts', type:'space', prefix:'in'})
CREATE (CorridorAccessGroup:AccessGroup {accessGroupId:'155', name:'first floor corridor', type:'space', prefix:'in'})
CREATE (ParkingAccessGroup:AccessGroup {accessGroupId:'156', name:'underground parking', type:'space', prefix:'in'})

CREATE (StaffAccessGroup:AccessGroup {accessGroupId:'157', name:'staff', type:'role', prefix:'in'})

//create to registration access groups.

CREATE (RegisteringAG:AccessGroup {accessGroupId:'158', name:'registering', type:'auth', prefix:'is'})
CREATE (ReviewingAG:AccessGroup {accessGroupId:'159', name:'under review', type:'auth', prefix:'is'})
CREATE (ValidatedAG:AccessGroup {accessGroupId:'160', name:'validated', type:'auth', prefix:'is'})
CREATE (SuspendedAG:AccessGroup {accessGroupId:'161', name:'suspended', type:'auth', prefix:'is'})

//attach the access groups to entities that they belong to...note that the registeringag does not belong to anything (since a user will not have an associated development at this time)

CREATE (ReviewingAG)-[:BELONGS_TO]->(d)
CREATE (ValidatedAG)-[:BELONGS_TO]->(d)
CREATE (SuspendedAG)-[:BELONGS_TO]->(d)

CREATE (AllAG)-[:BELONGS_TO]->(d)
CREATE (OwnersAG)-[:BELONGS_TO]->(d)
CREATE (TenantsAG)-[:BELONGS_TO]->(d)
CREATE (ResidentsAG)-[:BELONGS_TO]->(d)
CREATE (StaffAccessGroup)-[:BELONGS_TO]->(d);

//south block
MATCH (f:Floor {floorId:'3'})
MATCH (fag:AccessGroup {name:'1st'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'4'})
MATCH (fag:AccessGroup {name:'2nd'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'5'})
MATCH (fag:AccessGroup {name:'3rd'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'6'})
MATCH (fag:AccessGroup {name:'4th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'7'})
MATCH (fag:AccessGroup {name:'5th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'8'})
MATCH (fag:AccessGroup {name:'6th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'9'})
MATCH (fag:AccessGroup {name:'7th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'10'})
MATCH (fag:AccessGroup {name:'8th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'11'})
MATCH (fag:AccessGroup {name:'9th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'12'})
MATCH (fag:AccessGroup {name:'10th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'13'})
MATCH (fag:AccessGroup {name:'11th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'14'})
MATCH (fag:AccessGroup {name:'12th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'15'})
MATCH (fag:AccessGroup {name:'13th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'16'})
MATCH (fag:AccessGroup {name:'14th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'17'})
MATCH (fag:AccessGroup {name:'15th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'18'})
MATCH (fag:AccessGroup {name:'16th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'19'})
MATCH (fag:AccessGroup {name:'17th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'20'})
MATCH (fag:AccessGroup {name:'18th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'21'})
MATCH (fag:AccessGroup {name:'19th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'22'})
MATCH (fag:AccessGroup {name:'20th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'23'})
MATCH (fag:AccessGroup {name:'21st'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'24'})
MATCH (fag:AccessGroup {name:'22nd'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'25'})
MATCH (fag:AccessGroup {name:'22rd'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'26'})
MATCH (fag:AccessGroup {name:'24th'})
CREATE (fag)-[:BELONGS_TO]->(f);


//north block access groups
MATCH (f:Floor {floorId:'27'})
MATCH (fag:AccessGroup {name:'1st'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'28'})
MATCH (fag:AccessGroup {name:'2nd'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'29'})
MATCH (fag:AccessGroup {name:'3rd'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'30'})
MATCH (fag:AccessGroup {name:'4th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'31'})
MATCH (fag:AccessGroup {name:'5th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'32'})
MATCH (fag:AccessGroup {name:'6th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'33'})
MATCH (fag:AccessGroup {name:'7th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'34'})
MATCH (fag:AccessGroup {name:'8th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'35'})
MATCH (fag:AccessGroup {name:'9th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'36'})
MATCH (fag:AccessGroup {name:'10th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'37'})
MATCH (fag:AccessGroup {name:'11th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'38'})
MATCH (fag:AccessGroup {name:'12th'})
CREATE (fag)-[:BELONGS_TO]->(f);

MATCH (f:Floor {floorId:'39'})
MATCH (fag:AccessGroup {name:'13th'})
CREATE (fag)-[:BELONGS_TO]->(f);


MATCH (d:Development {name:'Wharfside'})
MATCH (ag:AccessGroup {accessGroupId:'125'})
MATCH (b:Block {blockId: '3'})
CREATE (d)<-[:BELONGS_TO]-(ag)-[:BELONGS_TO]->(b);


MATCH (d:Development {name:'Wharfside'})
MATCH (ag:AccessGroup {accessGroupId:'125a'})
MATCH (b:Block {blockId: '2'})
CREATE (d)<-[:BELONGS_TO]-(ag)-[:BELONGS_TO]->(b);

MATCH (d:Development {name:'Wharfside'})
CREATE (MaleAccessGroup)-[:BELONGS_TO]->(d)
CREATE (FemaleAccessGroup)-[:BELONGS_TO]->(d)
CREATE (NewAccessGroup)-[:BELONGS_TO]->(d)
CREATE (LobbyAccessGroup)-[:BELONGS_TO]->(d)
CREATE (ParkingAccessGroup)-[:BELONGS_TO]->(d)
CREATE (LiftsAccessGroup)-[:BELONGS_TO]->(d)
CREATE (CorridorAccessGroup)-[:BELONGS_TO]->(d);


//each of these need to be run separately once the inserts above have been run since they're multiple independent queries.

//add all users to their own private access group
MATCH (auser:User) WITH auser CREATE (auser)-[:BELONGS_TO]->(ag:AccessGroup {accessGroupId:auser.userId, name:'private', type:'private'});

//---------------------- add all the users to the 'every' access group-------------------------//
MATCH (auser:User)
MATCH (ag:AccessGroup {name:'all'})
WITH auser, ag
CREATE UNIQUE (auser)-[:BELONGS_TO]->(ag);

//---------------------- add all the users to the 'validated' access group ----------------------//
MATCH (d:Development {name:'Wharfside'})
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
MATCH (ag:AccessGroup {name:'1st'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'4'})
MATCH (ag:AccessGroup {name:'2nd'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'5'})
MATCH (ag:AccessGroup {name:'3rd'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'6'})
MATCH (ag:AccessGroup {name:'4th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'7'})
MATCH (ag:AccessGroup {name:'5th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'8'})
MATCH (ag:AccessGroup {name:'6th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'9'})
MATCH (ag:AccessGroup {name:'7th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'10'})
MATCH (ag:AccessGroup {name:'8th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'11'})
MATCH (ag:AccessGroup {name:'9th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'12'})
MATCH (ag:AccessGroup {name:'10th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'13'})
MATCH (ag:AccessGroup {name:'11th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'14'})
MATCH (ag:AccessGroup {name:'12th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'15'})
MATCH (ag:AccessGroup {name:'13th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'16'})
MATCH (ag:AccessGroup {name:'14th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'17'})
MATCH (ag:AccessGroup {name:'15th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'18'})
MATCH (ag:AccessGroup {name:'16th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'19'})
MATCH (ag:AccessGroup {name:'17th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'20'})
MATCH (ag:AccessGroup {name:'18th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'21'})
MATCH (ag:AccessGroup {name:'19th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'22'})
MATCH (ag:AccessGroup {name:'20th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'23'})
MATCH (ag:AccessGroup {name:'21st'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'24'})
MATCH (ag:AccessGroup {name:'22nd'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'25'})
MATCH (ag:AccessGroup {name:'23rd'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'26'})
MATCH (ag:AccessGroup {name:'24th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'27'})
MATCH (ag:AccessGroup {name:'1st'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'28'})
MATCH (ag:AccessGroup {name:'2nd'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'29'})
MATCH (ag:AccessGroup {name:'3rd'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'30'})
MATCH (ag:AccessGroup {name:'4th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'31'})
MATCH (ag:AccessGroup {name:'5th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'32'})
MATCH (ag:AccessGroup {name:'6th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'33'})
MATCH (ag:AccessGroup {name:'7th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'34'})
MATCH (ag:AccessGroup {name:'8th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'35'})
MATCH (ag:AccessGroup {name:'9th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'36'})
MATCH (ag:AccessGroup {name:'10th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'37'})
MATCH (ag:AccessGroup {name:'11th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'38'})
MATCH (ag:AccessGroup {name:'12th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);

MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor {floorId:'39'})
MATCH (ag:AccessGroup {name:'13th'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);


//---------------------- add all users to the relevant block access groups ----------------------------//
MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor)-[:IN]->(b:Block {name:'North Block'})
MATCH (ag:AccessGroup {name:'North Block'})
WITH DISTINCT duser, ag
CREATE UNIQUE (duser)-[:BELONGS_TO]->(ag);


MATCH (duser:User)-[:LIVES_IN|OWNS]->(Apartment)-[:ON]->(f:Floor)-[:IN]->(b:Block {name:'South Block'})
MATCH (ag:AccessGroup {name:'South Block'})
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


