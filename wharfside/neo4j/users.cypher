
//create admin, system users
CREATE (admin1:User {userId:'1',password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  username:'system'});

//create spaces and staff
MATCH (d:Development {name:'Wharfside'})
WITH d
CREATE (lobby1:User {userId:'lobby1',password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', username:'Lobby'})-[:AFFILIATED_WITH]->(d)
CREATE (parking1:User {userId:'parking1',password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', username:'Parking'})-[:AFFILIATED_WITH]->(d)
CREATE (corridor1:User {userId:'lifts1',password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', username:'Corridor'})-[:AFFILIATED_WITH]->(d)
CREATE (lifts1:User {userId:'corridor1',password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', username:'Lifts'})-[:AFFILIATED_WITH]->(d);


//create spaces and staff
MATCH (d:Development {name:'Wharfside'})
WITH d
CREATE (staff1:User {userId:'46',role:'staff', password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', username:'Cleaner One', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (staff2:User {userId:'47',role:'staff', password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', username:'Cleaner Two', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (staff3:User {userId:'48',role:'staff', password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', username:'Security One', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (staff4:User {userId:'49',role:'staff', password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', username:'Security Two', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (staff5:User {userId:'50',role:'staff', password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', username:'Concierge One', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (staff6:User {userId:'51', role:'staff', password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', username:'Concierge Two', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (staff7:User {userId:'52',role:'staff', password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', username:'Maintenance One', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (wharfsidestaff:Staff {staffId:'110', name:'wharfside staff'})
CREATE (wharfsidestaff)-[:WORK_IN]->(d)
CREATE (wharfsidecleaners:Group {groupId:'111',name:'wharfside cleaners'})
CREATE (wharfsideconcierge:Group {groupId:'112',name:'wharfside concierges'})
CREATE (wharfsidesecurity:Group {groupId:'113',name:'wharfside security'})
CREATE (wharfsidemaintenance:Group {groupId:'114', name:'wharfside maintenance'})
CREATE (wharfsidecleaners)-[:MEMBER_OF]->(wharfsidestaff)
CREATE (wharfsideconcierge)-[:MEMBER_OF]->(wharfsidestaff)
CREATE (wharfsidesecurity)-[:MEMBER_OF]->(wharfsidestaff)
CREATE (wharfsidemaintenance)-[:MEMBER_OF]->(wharfsidestaff)
CREATE (staff1)-[:BELONGS_TO]->(lilliecleaners)
CREATE (staff2)-[:BELONGS_TO]->(lilliecleaners)
CREATE (staff3)-[:BELONGS_TO]->(lilliesecurity)
CREATE (staff4)-[:BELONGS_TO]->(lilliesecurity)
CREATE (staff5)-[:BELONGS_TO]->(lillieconcierge)
CREATE (staff6)-[:BELONGS_TO]->(lillieconcierge)
CREATE (staff7)-[:BELONGS_TO]->(lilliemaintenance);


//create residents
MATCH (d:Development {name:'Wharfside'})
WITH d
CREATE (user1:User {userId:'53',username:'Tom', firstname:'Tom', surname:'Lodge', email:'tlodge+53@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user2:User {userId:'54',username:'Simon',firstname:'Simon', surname:'Brown', email:'tlodge+54@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user3:User {userId:'55',username:'John',firstname:'John', surname:'Blue', email:'tlodge+55@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user4:User {userId:'56',username:'Katie',firstname:'Katie', surname:'White', email:'tlodge+56@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user5:User {userId:'57',username:'Sarah',firstname:'Sarah', surname:'Green', email:'tlodge+57@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user6:User {userId:'58',username:'Milly',firstname:'Milly', surname:'Smith', email:'tlodge+58@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user7:User {userId:'59',username:'Joan',firstname:'Joan', surname:'Jones', email:'tlodge+59@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user8:User {userId:'60',username:'Valerie',firstname:'Valerie', surname:'Bonj', email:'tlodge+60@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user9:User {userId:'61',username:'James', firstname:'James', surname:'Klop', email:'tlodge+61@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user10:User {userId:'62',username:'Bob', firstname:'Bob', surname:'Brown', email:'tlodge+62@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user11:User {userId:'63',username:'Richard',firstname:'Richard', surname:'Grey', email:'tlodge+63@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user12:User {userId:'64',username:'Emily',firstname:'Emily', surname:'Pink', email:'tlodge+64@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user13:User {userId:'65',username:'Gillian',firstname:'Gillian', surname:'Dilbert', email:'tlodge+65@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user14:User {userId:'66',username:'Doloris',firstname:'Doloris', surname:'Outy', email:'tlodge+66@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user15:User {userId:'67',username:'Bruce',firstname:'Bruce', surname:'Kinberg', email:'tlodge+67@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user16:User {userId:'68',username:'Billy',firstname:'Billy', surname:'James', email:'tlodge+68@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user17:User {userId:'69',username:'Maisie',firstname:'Maisie', surname:'Mop', email:'tlodge+69@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user18:User {userId:'70',username:'Darius',firstname:'Darius', surname:'Moon', email:'tlodge+70@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user19:User {userId:'71',username:'Jamie',firstname:'Jamie', surname:'Sun', email:'tlodge+71@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user20:User {userId:'72',username:'Isabel',firstname:'Isabel', surname:'Cloud', email:'tlodge+72@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user21:User {userId:'73',username:'Molly',firstname:'Molly', surname:'Pie', email:'tlodge+73@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user22:User {userId:'74',username:'Peter',firstname:'Peter', surname:'Cale', email:'tlodge+74@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user23:User {userId:'75',username:'Mark',firstname:'Mark', surname:'Cake', email:'tlodge+75@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user24:User {userId:'76',username:'Arthur',firstname:'Arthur', surname:'Jimp', email:'tlodge+76@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user25:User {userId:'77',username:'Poppy',firstname:'Poppy', surname:'Jing', email:'tlodge+77@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user26:User {userId:'78',username:'Rosie',firstname:'Rosie', surname:'Han', email:'tlodge+78@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user27:User {userId:'79',username:'Robert',firstname:'Robert', surname:'Chiller', email:'tlodge+79@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user28:User {userId:'80',username:'Barney',firstname:'Barney', surname:'Gib', email:'tlodge+80@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user29:User {userId:'81',username:'Lesley',firstname:'Lesley', surname:'Glib', email:'tlodge+81@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user30:User {userId:'82',username:'Christopher',firstname:'Christopher', surname:'Prom', email:'tlodge+82@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user31:User {userId:'83',username:'Ellie',firstname:'Ellie', surname:'Kopl', email:'tlodge+83@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user32:User {userId:'84',username:'Sophie',firstname:'Sophie', surname:'Kuop', email:'tlodge+84@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user33:User {userId:'85',username:'Alex',firstname:'Alex', surname:'Liop', email:'tlodge+85@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user34:User {userId:'86',username:'Anita',firstname:'Anita', surname:'Nilder', email:'tlodge+86@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user35:User {userId:'87',username:'Andrew',firstname:'Andrew', surname:'Brem', email:'tlodge+87@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user36:User {userId:'88',username:'Edwina',firstname:'Edwina', surname:'Shert', email:'tlodge+88@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user37:User {userId:'89',username:'Jon',firstname:'Jon', surname:'Lope', email:'tlodge+89@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user38:User {userId:'90',username:'Grace',firstname:'Grace', surname:'Pram', email:'tlodge+90@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user39:User {userId:'91',username:'Edward',firstname:'Edward', surname:'Bipl', email:'tlodge+91@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user40:User {userId:'92',username:'Michela',firstname:'Michela', surname:'Khan', email:'tlodge+92@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user41:User {userId:'93',username:'Beatrice',firstname:'Beatrice', surname:'Shah', email:'tlodge+93@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user42:User {userId:'94',username:'Joy', firstname:'Joy', surname:'Jones', email:'tlodge+94@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user43:User {userId:'95',username:'Michael',firstname:'Michael', surname:'Jomsey', email:'tlodge+95@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user44:User {userId:'96',username:'Chester',firstname:'Chester', surname:'John', email:'tlodge+96@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user45:User {userId:'97',username:'Benjamin',firstname:'Benjamin', surname:'Hamp', email:'tlodge+97@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user46:User {userId:'98',username:'Adrian',firstname:'Adrian', surname:'Jupol', email:'tlodge+98@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user47:User {userId:'99',username:'Stephen',firstname:'Stephen', surname:'Driver', email:'tlodge+99@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user48:User {userId:'100',username:'Thomas',firstname:'Thomas', surname:'Dribble', email:'tlodge+100@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user49:User {userId:'101',username:'Chris',firstname:'Chris', surname:'Key', email:'tlodge+101@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user50:User {userId:'102',username:'Nina',firstname:'Nina', surname:'Lodge', email:'tlodge+102@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user51:User {userId:'103',username:'Jake',firstname:'Jake', surname:'Kay', email:'tlodge+103@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000,  password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K', sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user52:User {userId:'104',username:'Miles',firstname:'Miles', surname:'Kheam', email:'tlodge+104@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user53:User {userId:'105',username:'Terry',firstname:'Terry', surname:'Bream', email:'tlodge+105@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user54:User {userId:'106',username:'Kiran',firstname:'Kiran', surname:'Boat', email:'tlodge+106@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user55:User {userId:'107',username:'Piers',firstname:'Piers', surname:'Wall', email:'tlodge+107@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user56:User {userId:'108',username:'Joe',firstname:'Joe', surname:'Fill', email:'tlodge+108@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user57:User {userId:'109',username:'Abigail',firstname:'Abigail', surname:'Numbert', email:'tlodge+109@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user58:User {userId:'110',username:'Bobbin',firstname:'Bob', surname:'Bobbin', email:'tlodge+u110@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user59:User {userId:'111',username:'Gobbin',firstname:'Gob', surname:'Gobbin', email:'tlodge+u111@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user60:User {userId:'112',username:'Hobbin',firstname:'Hob', surname:'Hobbin', email:'tlodge+u112@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user61:User {userId:'113',username:'Lobbin',firstname:'Lob', surname:'Lobbin', email:'tlodge+u113@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user62:User {userId:'114',username:'Brodie',firstname:'Brendon', surname:'Brodie', email:'tlodge+u114@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user63:User {userId:'115',username:'Grodie',firstname:'Grendon', surname:'Grodie', email:'tlodge+u115@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user64:User {userId:'116',username:'Crodie',firstname:'Crendon', surname:'Crodie', email:'tlodge+u116@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user65:User {userId:'117',username:'Bop',firstname:'Bam', surname:'Bop', email:'tlodge+u117@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user66:User {userId:'118',username:'Vop',firstname:'Vam', surname:'Lop', email:'tlodge+u118@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user67:User {userId:'119',username:'Kop',firstname:'Kam', surname:'Pop', email:'tlodge+u119@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user68:User {userId:'120',username:'Jorrie',firstname:'Jorrie', surname:'Jensen', email:'tlodge+u120@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user69:User {userId:'121',username:'Lorrie',firstname:'Lorrie', surname:'Lensen', email:'tlodge+u121@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user70:User {userId:'122',username:'Korrie',firstname:'Korrie', surname:'Kensen', email:'tlodge+u122@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user71:User {userId:'123',username:'Qorrie',firstname:'Qorrie', surname:'Qensen', email:'tlodge+u123@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user72:User {userId:'124',username:'Worrie',firstname:'Worrie', surname:'Wensen', email:'tlodge+u124@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user73:User {userId:'125',username:'Eorrie',firstname:'Eorrie', surname:'Eensen', email:'tlodge+u125@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user74:User {userId:'126',username:'Rorrie',firstname:'Rorrie', surname:'Rensen', email:'tlodge+u126@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user75:User {userId:'127',username:'Torrie',firstname:'Torrie', surname:'Tensen', email:'tlodge+u127@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user76:User {userId:'128',username:'Yorrie',firstname:'Yorrie', surname:'Yensen', email:'tlodge+u128@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user77:User {userId:'129',username:'Uorrie',firstname:'Uorrie', surname:'Uensen', email:'tlodge+u129@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user78:User {userId:'130',username:'Iorrie',firstname:'Iorrie', surname:'Iensen', email:'tlodge+u130@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'female'})-[:AFFILIATED_WITH]->(d)
CREATE (user79:User {userId:'131',username:'Beeny',firstname:'Beeny', surname:'Loo', email:'tlodge+u131@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user80:User {userId:'132',username:'Ceeny',firstname:'Beeny', surname:'Coo', email:'tlodge+u132@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user81:User {userId:'133',username:'Deeny',firstname:'Beeny', surname:'Doo', email:'tlodge+u133@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user82:User {userId:'134',username:'Eeeny',firstname:'Beeny', surname:'Eoo', email:'tlodge+u134@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user83:User {userId:'135',username:'Feeny',firstname:'Beeny', surname:'Foo', email:'tlodge+u135@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user84:User {userId:'136',username:'Geeny',firstname:'Beeny', surname:'Goo', email:'tlodge+u136@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user85:User {userId:'137',username:'Heeny',firstname:'Beeny', surname:'Hoo', email:'tlodge+u137@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user86:User {userId:'138',username:'Ieeny',firstname:'Beeny', surname:'Ioo', email:'tlodge+u138@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user87:User {userId:'139',username:'Jeeny',firstname:'Beeny', surname:'Joo', email:'tlodge+u139@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user88:User {userId:'140',username:'Keeny',firstname:'Beeny', surname:'Koo', email:'tlodge+u140@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user89:User {userId:'141',username:'Leeny',firstname:'Beeny', surname:'Loo', email:'tlodge+u141@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user90:User {userId:'142',username:'Meeny',firstname:'Beeny', surname:'Moo', email:'tlodge+u142@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d)
CREATE (user91:User {userId:'143',username:'Neeny',firstname:'Beeny', surname:'Noo', email:'tlodge+u143@gmail.com', mobile:'07972639571', role:'user', created:1441890901000,validated:1441890951000, password:'$2a$10$47ekZAc70msgRYA91WX7qOnYGHdYnrUH.v6c4CxnlWfwjXUCMm49K',  sex:'male'})-[:AFFILIATED_WITH]->(d);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'73'}) 
MATCH (u:User {userId:'53'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'119'}) 
MATCH (u:User {userId:'54'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'183'}) 
MATCH (u:User {userId:'55'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'18'}) 
MATCH (u:User {userId:'56'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'19'}) 
MATCH (u:User {userId:'57'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'163'}) 
MATCH (u:User {userId:'58'})
CREATE (u)-[:OWNS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'133'}) 
MATCH (u:User {userId:'59'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'136'}) 
MATCH (u:User {userId:'60'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'115'}) 
MATCH (u:User {userId:'61'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'135'}) 
MATCH (u:User {userId:'62'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'180'}) 
MATCH (u:User {userId:'63'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'175'}) 
MATCH (u:User {userId:'64'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'24'}) 
MATCH (u:User {userId:'65'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'36'}) 
MATCH (u:User {userId:'66'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'129'}) 
MATCH (u:User {userId:'67'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'21'}) 
MATCH (u:User {userId:'68'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'41'}) 
MATCH (u:User {userId:'69'})
CREATE (u)-[:OWNS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'189'}) 
MATCH (u:User {userId:'70'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'63'}) 
MATCH (u:User {userId:'71'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'56'}) 
MATCH (u:User {userId:'72'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'82'}) 
MATCH (u:User {userId:'73'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'137'}) 
MATCH (u:User {userId:'74'})
CREATE (u)-[:OWNS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'188'}) 
MATCH (u:User {userId:'75'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'193'}) 
MATCH (u:User {userId:'76'})
CREATE (u)-[:OWNS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'181'}) 
MATCH (u:User {userId:'77'})
CREATE (u)-[:OWNS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'70'}) 
MATCH (u:User {userId:'78'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'154'}) 
MATCH (u:User {userId:'79'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'40'}) 
MATCH (u:User {userId:'80'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'50'}) 
MATCH (u:User {userId:'81'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'45'}) 
MATCH (u:User {userId:'82'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'97'}) 
MATCH (u:User {userId:'83'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'142'}) 
MATCH (u:User {userId:'84'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'122'}) 
MATCH (u:User {userId:'85'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'43'}) 
MATCH (u:User {userId:'86'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'118'}) 
MATCH (u:User {userId:'87'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'42'}) 
MATCH (u:User {userId:'88'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'78'}) 
MATCH (u:User {userId:'89'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'31'}) 
MATCH (u:User {userId:'90'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'191'}) 
MATCH (u:User {userId:'91'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'64'}) 
MATCH (u:User {userId:'92'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'151'}) 
MATCH (u:User {userId:'93'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'126'}) 
MATCH (u:User {userId:'94'})
CREATE (u)-[:OWNS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'158'}) 
MATCH (u:User {userId:'95'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'148'}) 
MATCH (u:User {userId:'96'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'113'}) 
MATCH (u:User {userId:'97'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'114'}) 
MATCH (u:User {userId:'98'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'162'}) 
MATCH (u:User {userId:'99'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'20'}) 
MATCH (u:User {userId:'100'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'15'}) 
MATCH (u:User {userId:'101'})
CREATE (u)-[:OWNS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'71'}) 
MATCH (u:User {userId:'102'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'173'}) 
MATCH (u:User {userId:'103'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'65'}) 
MATCH (u:User {userId:'104'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'96'}) 
MATCH (u:User {userId:'105'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'150'}) 
MATCH (u:User {userId:'106'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'138'}) 
MATCH (u:User {userId:'107'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'35'}) 
MATCH (u:User {userId:'108'})
CREATE (u)-[:OWNS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'153'}) 
MATCH (u:User {userId:'109'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'130'}) 
MATCH (u:User {userId:'110'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'81'}) 
MATCH (u:User {userId:'111'})
CREATE (u)-[:OWNS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'94'}) 
MATCH (u:User {userId:'112'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'28'}) 
MATCH (u:User {userId:'113'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'93'}) 
MATCH (u:User {userId:'114'})
CREATE (u)-[:OWNS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'30'}) 
MATCH (u:User {userId:'115'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'27'}) 
MATCH (u:User {userId:'116'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'178'}) 
MATCH (u:User {userId:'117'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'167'}) 
MATCH (u:User {userId:'118'})
CREATE (u)-[:OWNS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'22'}) 
MATCH (u:User {userId:'119'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'146'}) 
MATCH (u:User {userId:'120'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'57'}) 
MATCH (u:User {userId:'121'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'95'}) 
MATCH (u:User {userId:'122'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'12'}) 
MATCH (u:User {userId:'123'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'144'}) 
MATCH (u:User {userId:'124'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'85'}) 
MATCH (u:User {userId:'125'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'89'}) 
MATCH (u:User {userId:'126'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'168'}) 
MATCH (u:User {userId:'127'})
CREATE (u)-[:OWNS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'14'}) 
MATCH (u:User {userId:'128'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'60'}) 
MATCH (u:User {userId:'129'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'67'}) 
MATCH (u:User {userId:'130'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'176'}) 
MATCH (u:User {userId:'131'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'66'}) 
MATCH (u:User {userId:'132'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'102'}) 
MATCH (u:User {userId:'133'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'186'}) 
MATCH (u:User {userId:'134'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'107'}) 
MATCH (u:User {userId:'135'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'174'}) 
MATCH (u:User {userId:'136'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'124'}) 
MATCH (u:User {userId:'137'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'51'}) 
MATCH (u:User {userId:'138'})
CREATE (u)-[:OWNS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'44'}) 
MATCH (u:User {userId:'139'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'160'}) 
MATCH (u:User {userId:'140'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'149'}) 
MATCH (u:User {userId:'141'})
CREATE (u)-[:OWNS]->(a) 
;

MATCH (d:Development {name:'Wharfside'}) 
MATCH (a:Apartment {apartmentId:'157'}) 
MATCH (u:User {userId:'142'})
CREATE (u)-[:RENTS]->(a) 
CREATE (u)-[:LIVES_IN]->(a);
