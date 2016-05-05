CREATE (s:Status {type:'published'});
CREATE (s1:Status {type:'unpublished'});

//************ large item disposal - goes to security *************

MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b1', type:'action', name:'large item disposal', description:'use this button when you need a <strong>large item</strong> such as a piece of furniture or old appliance to be picked up.  We usually need about two days notice to arrange the pickup with the council.', created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'what is the item?', type:'options', values:'{"options":"furniture,building material,appliance,other","multiple":"single","none":true}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'anything else we need to know?', type:'freetext', values:'{"length":160}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks for pressing the disposal button'})
WITH b1
CREATE (e1:Webhook {webhookId:'wh1', name:"notify staff", method:"POST", url:"http://red:1880/notify", parameters:'{"static":[{"id":"staffids", "value":[1,2,3,4]}, {"id":"message", "value":"my message"}]}'})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Security'})
CREATE b1-[:MEMBER_OF]->(cat);


//************ key release - goes to concierge *************

MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b2',  type:'action', name:'key release', description:'Use this button when you would like us to <strong>release keys</strong> to a third party to get access to your apartment.  Although we will do our best to keep an eye on anyone entering your apartment <strong>we cannot be accept liability for any issues that arise during the access period</strong>',created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'what is the name of the person/party requiring access?', type:'freetext', values:'{"length":160}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'what date with they need access on?', type:'date', values:'{"fromto":"single"}'})
CREATE (q2:Question {questionId:'q2', number:2, question:'how long (roughly) do you expect them to need?', type:'options', values:'{"options":"a few minutes,about an hour,a few hours, all day","multiple":"single","none":true}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
CREATE (b1)-[:ASKS]->(q2)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks for pressing the concierge button'})
WITH b1
CREATE (e1:Webhook {webhookId:'wh2',name:"notify staff", method:"POST", url:"http://red:1880/notify", parameters:'{"static":[{"id":"message","value":"my new message!"},{"id":"residentids","value":[{"id":"122","name":"owners"},{"id":"123","name":"tenants"},{"id":"124","name":"residents"}]}]}'})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Concierge'})
CREATE b1-[:MEMBER_OF]->(cat);


//************ visitor parking permit - goes to concierge *************

MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b3',  type:'action', name:'visitor parking permit', description:'Use this button when you need to register a temporary permit for a visitor.  All you need to do is to provide us with the numberplate.  <strong> You will not need to pick up a physical permit</strong> as, once issued, the car will be safe to park in the visitor area (which is the bay behind block 12)',created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'what is the numberplate of the car?', type:'freetext', values:'{"length":160}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'what date with they be visiting?', type:'date', values:'{"fromto":"single"}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks for pressing the permit button'})
WITH b1
CREATE (e1:Webhook {webhookId:'wh3',name:"notify staff", method:"POST", url:"http://red:1880/notify", parameters:'{"static":[{"id":"message","value":"my new message!"},{"id":"residentids","value":[{"id":"122","name":"owners"},{"id":"123","name":"tenants"},{"id":"124","name":"residents"}]}]}'})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Concierge'})
CREATE b1-[:MEMBER_OF]->(cat);


//************ report an issue - goes to maintenance *************

MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b4',  type:'action', name:'report an issue', description:'Use this button when you want to notify our maintenance crew of any issues around the development, such as broken windows, lights or doors.',created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'Please describe the issue', type:'freetext', values:'{"length":160}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'Please tell us where it is', type:'freetext', values:'{"length":160}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks for pressing the issue button'})
WITH b1
CREATE (e1:Webhook {webhookId:'wh4',name:"notify staff", method:"POST", url:"http://red:1880/notify", parameters:'{"static":[{"id":"message","value":"my new message!"},{"id":"residentids","value":[{"id":"122","name":"owners"},{"id":"123","name":"tenants"},{"id":"124","name":"residents"}]}]}'})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Maintenance'})
CREATE b1-[:MEMBER_OF]->(cat);

//************ meter reading request  - goes to maintenance *************
MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
CREATE (b1)-[:HAS_STATUS]->(s)
WITH d,s
CREATE (b1:Button {buttonId:'b5',  type:'action', name:'meter reading', description:'use this button when you want to get the latest reading for your <strong>electricity meter</strong>',created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (q0:Question {questionId:'q0', number:0, question:'which reading would you like?', type:'options', values:'{"options":"gas,electricity,water, all","multiple":"single","none":true}'})
CREATE (b1)-[:ASKS]->(q0)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks for pressing the meter reading request!'})
WITH b1
CREATE (e1:Webhook {webhookId:'wh5',name:"notify staff", method:"POST", url:"http://red:1880/notify", parameters:'{"static":[{"id":"message","value":"my new message!"},{"id":"residentids","value":[{"id":"122","name":"owners"},{"id":"123","name":"tenants"},{"id":"124","name":"residents"}]}]}'})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Maintenance'})
CREATE b1-[:MEMBER_OF]->(cat);


//************ noise disturbance - goes to security *************
MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'unpublished'})
WITH d,s
CREATE (b1:Button {buttonId:'b6',  type:'action', name:'noise disturbance', description:'use this button when there is a noise disturbance.  This will be logged and correlated with your neighbours; we will report the disturbance to the landlord/environmental health when we receive a threshold number of complaints.',created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'where is the noise coming from?', type:'options', values:'{"options":"an apartment, in corridors/shared space,in grounds,off site","multiple":"single","none":true}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'what kind of noise is it?', type:'options', values:'{"options":"shouting, music/radio, loud talking, other","multiple":"single","none":true}'})
CREATE (q2:Question {questionId:'q2', number:2, question:'anything else we need to know?', type:'freetext', values:'{"length":160}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
CREATE (b1)-[:ASKS]->(q2)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks for pressing the noise button!'})
WITH b1
CREATE (e1:Webhook {webhookId:'wh6',name:"notify staff", method:"POST", url:"http://red:1880/notify", parameters:'{"static":[{"id":"message","value":"my new message!"},{"id":"residentids","value":[{"id":"122","name":"owners"},{"id":"123","name":"tenants"},{"id":"124","name":"residents"}]}]}'})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Security'})
CREATE b1-[:MEMBER_OF]->(cat);

//************ water leak  - goes to maintenance *************
MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b7',  type:'action', name:'water leak', description:'use this button when there is a noise disturbance.  <strong> We aim to respond immediately </strong> and will require immediate access to the region where the water leaks has been discovered',created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'how serious is the leak?', type:'options', values:'{"options":"urgent, sporadic, small trickle","multiple":"single","none":true}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'please describe where the leak is coming from', type:'freetext', values:'{"length":160}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks for pressing the water leak button!'})
WITH b1
CREATE (e1:Webhook {webhookId:'wh7',name:"notify staff", method:"POST", url:"http://red:1880/notify", parameters:'{"static":[{"id":"message","value":"my new message!"},{"id":"residentids","value":[{"id":"122","name":"owners"},{"id":"123","name":"tenants"},{"id":"124","name":"residents"}]}]}'})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Maintenance'})
CREATE b1-[:MEMBER_OF]->(cat);


//************ info buttons!  *************
MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'bi1',  type:'information', name:'meet the directors', description:'up to date list of all of your developments <strong>directors</strong>',created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
WITH b1
MATCH (bag1:AccessGroup {name:'lobby'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (e1:Webhook {webhookId:'wh8',name:"meet the directors", description: "This development has a Residents association which acts as the voice of this community.  All members of the association are volunteers.  This is the <strong>latest</strong> list of directors responsible for your property.  We meet on <strong> the first Wednesday <strong> of every month.  Please contact us if there is anything you would like to be considered", method:"GET", returntype:'html', url:"http://red:1880/directors", parameters:'{"dynamic":[{"type":"latlng", "id":"coords", "title":"dev coords"}]}'})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Residents Association'})
CREATE b1-[:MEMBER_OF]->(cat);

MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'bi2',  type:'information', name:'bin code', description:'the bin code for the bins adjacent to the underground car park.  This code is changed twice a month',created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
WITH b1
MATCH (bag1:AccessGroup {name:'lobby'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (e1:Webhook {webhookId:'wh9',name:"bin store code", description:'the bin code for the bins adjacent to the underground car park.  This code is changed twice a month', method:"GET", returntype:'number', url:"http://red:1880/binstore"})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Security'})
CREATE b1-[:MEMBER_OF]->(cat);

MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'bi3',  type:'information', name:'pet policy', description:"the latest policy on keeping pets.  Changes have been made since last monday's incident with <strong>colin the tortoise</strong> (deceased)",created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
WITH b1
MATCH (bag1:AccessGroup {name:'lobby'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (e1:Webhook {webhookId:'wh10',name:"pet policy", description:'the latest policy on keeping pets', method:"GET", returntype:'text', url:"http://red:1880/petpolicy"})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Concierge'})
CREATE b1-[:MEMBER_OF]->(cat);

MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'bi5',  type:'information', name:'scammers', description:"<strong> we have had reports of scammers in the area</strong>.  If you see anyone that resembles the people in this photo, please do NOT engage with them",created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
WITH b1
MATCH (bag1:AccessGroup {name:'lobby'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (e1:Webhook {webhookId:'wh11',name:"scammers", description:'scammer images', method:"GET", returntype:'image', url:"http://red:1880/scammers"})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Security'})
CREATE b1-[:MEMBER_OF]->(cat);

MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'bi6',  type:'information', name:'next bus', description:"These are <strong> Transport for London's </strong> latest predicted times for the buses from here to <strong>the city</strong> and <strong> canary wharf</strong>",created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
WITH b1
MATCH (bag1:AccessGroup {name:'lobby'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (e1:Webhook {webhookId:'wh12',name:"bus predicted times", description:'predicted bus times using tfl api', method:"GET", returntype:'tabular', url:"http://red:1880/bus", parameters:'{"dynamic":[{"type":"latlng", "id":"coords", "title":"coords"}]}'})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Concierge'})
CREATE b1-[:MEMBER_OF]->(cat);

MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'bi7',  type:'information', name:'bike cage directions', description:"These are the directions to the <strong>new bike cages</strong>.  They have been installed next to the gym",created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
WITH b1
MATCH (bag1:AccessGroup {name:'lobby'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (e1:Webhook {webhookId:'wh13',name:"directions", description:'directions image', method:"GET", returntype:'image', url:"http://red:1880/directions"})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Security'})
CREATE b1-[:MEMBER_OF]->(cat);

MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'0x549fe5ca5b000000', type:'action', name:'parcel delivery', description:"Use this when a new parcel has been delivered and you want to notify the user and record the parcel on the system",created:1453839559020, modified:1453839559020})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {values:'{}', questionId:'text', number:2, question:'your note', type:'freetext'})
CREATE (q1:Question {values:'{}', questionId:'user', number:1, question:'which user would you like to notify?', type:'users'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
WITH b1
MATCH (bag1:AccessGroup {name:'staff'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (wh1:Webhook {webhookId:'0x549fe5ca5b400001', name:'notify a user', method:'POST', parameters:'{"static":[],"dynamic":[]}', url:'http://red:1880/notify'})
CREATE (wh2:Webhook {webhookId:'0x549fe5ca5b400000', name:'log', method:'POST', parameters:'{"static":[{"id":"name","value":"parcels"}],"dynamic":[{"type":"userId","id":"userId","title":"user who pressed"}]}', url: 'http://red:1880/log'})
CREATE (b1)-[:CALLS]->(wh1)
CREATE (b1)-[:CALLS]->(wh2)
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks for pressing the parcel delivery button'})
WITH b1
MATCH (cat:ButtonCategory {name:'Concierge'})
CREATE b1-[:MEMBER_OF]->(cat);


MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {description:'use this when a parcel has been picked up.', name:'parcel pickup', buttonId:'0x549fe611da000000', type:'action', created:1453839632232, modified:1453839632232})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {values:'{"storeId":"parcels", questionId: 'datastoreitem',number:1, question:'the parcel that has been picked up', type:'datastoreitem'})
CREATE (q1:Question {values:'{}', questionId:'signature', number:2, question:'please provide your signature', type:'signature'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
WITH b1
MATCH (bag1:AccessGroup {name:'staff'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (wh1:Webhook {name:'parcel pickup', method:'POST', parameters:'{"static":[],"dynamic":[{"type":"userId","id":"userId","title":"userId"}]}', webhookId: '0x549fe611da400000', url:'http://red:1880/parcel/pickup'})
CREATE (b1)-[:CALLS]->(wh1)
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks for pressing the parcel pickup button'})
WITH b1
MATCH (cat:ButtonCategory {name:'Concierge'})
CREATE b1-[:MEMBER_OF]->(cat);


MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {created:1453839844741, description:'collected parcels', name:'collected parcels',buttonId:'0x549fe6e161800000', type:'information', modified:1453839844741})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
WITH b1
MATCH (bag1:AccessGroup {name:'staff'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (e1:Webhook {description:'This will return the data from a log store in a table.', name:'logstore', method:'GET', parameters:'{"static":[{"type":"datastore","id":"datastore","title":"name of the logstore you would like to display","value":{"storeId":"collected","name":"collected"}}],"dynamic":[]}', webhookId:'0x549fe6e161800001', url:'http://red:1880/logstore', returntype:'tabular'})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Concierge'})
CREATE b1-[:MEMBER_OF]->(cat);

