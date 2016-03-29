CREATE (s:Status {type:'published'});
CREATE (s1:Status {type:'unpublished'});


//************ water leak  - goes to maintenance *************
MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b1',  type:'action', name:'report leak', description:'Use this button when you have noticed a leak <strong> in your flat </strong> or somewhere <strong> within the wharfside estate</strong>. We will need to know the severity of the leak, the location and any other details that you feel may be relevant.',created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'how severe is the leak?', type:'options', values:'{"options":"urgent, moderate, low","multiple":"single","none":true}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'where is the leak coming from (if known)?', type:'freetext', values:'{"length":"medium"}'})
CREATE (q2:Question {questionId:'q2', number:2, question:'anything else we need to know?', type:'freetext', values:'{"length":"medium"}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
CREATE (b1)-[:ASKS]->(q2)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks for notifying us. We will aim to get back to you as soon as we can, and will respond immediately if the leak is urgent.'})
WITH b1
MATCH (cat:ButtonCategory {name:'Maintenance'})
CREATE b1-[:MEMBER_OF]->(cat);

//************ new fob  - goes to concierge *************
MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b2',  type:'action', name:'new fob', description:'Use this button if you require a new parking or door fob.  If the fob is a re-issue (i.e. it has been lost/damaged), the charge for a new one is £30. If the fob is a new issue it will be supplied free of charge but we require a £50 deposit per fob.  We will typically aim to have a new fob ready for you within 24 hours and will contact you when it is ready to be picked up.',created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'what door do you need a fob for?', type:'options', values:'{"options":"garage, south block entrance, north block entrance","multiple":"single","none":true}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'how many do you need?', type:'options', values:'{"options":"1,2","multiple":"single","none":true}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks, your new fob request is now in the system.  We will aim get back to you within 24 hours for you to pick it up from the concierge office.'})
WITH b1
MATCH (cat:ButtonCategory {name:'Concierge'})
CREATE b1-[:MEMBER_OF]->(cat);

//************ key release - goes to concierge *************

MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b3',  type:'action', name:'key release', description:'Use this button when you would like us to <strong>release keys</strong> to your property for a visitor or contractor',created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'who is the key to be released to?', type:'freetext', values:'{"length":"small"}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'when will they be arriving?', type:'date', values:'{"fidelity":"dateandtime"}'})
CREATE (q2:Question {questionId:'q2', number:2, question:'how long (roughly) do you expect them to need?', type:'options', values:'{"options":"one hour, two hours, under half a day, a full day, more than a day","multiple":"single","none":true}'})
CREATE (q3:Question {questionId:'q3', number:3, question:'who is the key to be released to?', type:'freetext', values:'{"length":"small"}'})
CREATE (q4:Question {questionId:'q4', number:4, question:'contact number in emergency', type:'freetext', values:'{"length":"phone"}'})
CREATE (q5:Question {questionId:'q5', number:5, question:'please provide your signature', type:'signature', values:'{}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
CREATE (b1)-[:ASKS]->(q2)
CREATE (b1)-[:ASKS]->(q3)
CREATE (b1)-[:ASKS]->(q4)
CREATE (b1)-[:ASKS]->(q5)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks, we will issue the keys to your aparment as per your instructions; we will inform you when the keys have been picked up.'})
WITH b1
MATCH (cat:ButtonCategory {name:'Concierge'})
CREATE b1-[:MEMBER_OF]->(cat);

//************ property issue - goes to maintenance *************
MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b4',  type:'action', name:'property issue', description:'use this button to report any issues related to the common parts of wharfside (faulty doors, worn carpets, broken lights etc).  These will be sent immediately to the maintenance team who aim to investigate all reports within 2 hours.', created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'how urgent is it?', type:'options', values:'{"options":"high, medium, low","multiple":"single","none":true}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'where is the issue', type:'options', values:'{"options":"north block, south block, grounds, lifts, other","multiple":"single","none":true}'})
CREATE (q2:Question {questionId:'q2', number:2, question:'please describe the issue', type:'freetext', values:'{"length":"medium"}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
CREATE (b1)-[:ASKS]->(q2)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks, maintenance have been notified and will investigate the issue shortly.  We will get back to you to let you know the outcome.'})
WITH b1
MATCH (cat:ButtonCategory {name:'Maintenance'})
CREATE b1-[:MEMBER_OF]->(cat);


//************ noise - goes to security *************
MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b5',  type:'action', name:'report noise!', description:'use this button when there is excessive noise between <strong> 10pm and 7am </strong> that has been going on for more than <strong> 15 </strong> minutes.  Your report will be logged in the system for future reference and will be correlated with similar reports, should we need to take further action.', created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'what is the source of the noise?', type:'options', values:'{"options":"fellow resident, non-residents, machinery, vehicle, other","multiple":"single","none":true}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'is it still happening now?', type:'options', values:'{"options":"yes,no","multiple":"single","none":true}'})  
CREATE (q2:Question {questionId:'q2', number:2, question:'how long has it been going on for?', type:'options', values:'{"options":"15 min, 1 hour, an hour plus","multiple":"single","none":true}'})
CREATE (q3:Question {questionId:'q3', number:3, question:'is this the first time you have been disturbed by this noise?', type:'options', values:'{"options":"yes,no","multiple":"single","none":true}'}) 
CREATE (q4:Question {questionId:'q4', number:4, question:'is this the first time you have reported this noise?', type:'options', values:'{"options":"yes,no","multiple":"single","none":true}'}) 
CREATE (q5:Question {questionId:'q5', number:5, question:'is there anything else we should know?', type:'freetext', values:'{"length":"medium"}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
CREATE (b1)-[:ASKS]->(q2)
CREATE (b1)-[:ASKS]->(q3)
CREATE (b1)-[:ASKS]->(q4)
CREATE (b1)-[:ASKS]->(q5)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thank you for the report.  We will aim to investigate all noise disturbances promptly and report our findings to you in two working days'})
WITH b1
MATCH (cat:ButtonCategory {name:'Security'})
CREATE b1-[:MEMBER_OF]->(cat);


//************ antisocial behaviour - goes to security *************
MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b6',  type:'action', name:'antisocial behaviour', description:'use this button to notify us of any antisocial behaviour, for example: <strong> trespassing, vandalism, graffiti, litter</strong>.  We will aim to investigate any antisocial behaviour as a matter of priority.', created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'what is the issue?', type:'options', values:'{"options":"trespasser, vandalism, graffiti, litter, assault, other","multiple":"single","none":true}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'is it happening now?', type:'options', values:'{"options":"yes, no, not relevant","multiple":"single","none":true}'})
CREATE (q2:Question {questionId:'q2', number:2, question:'please provide further details if possible', type:'freetext', values:'{"length":"medium"}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
CREATE (b1)-[:ASKS]->(q2)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thank you for the report, we will aim to investigate the issue as a matter of priority.'})
WITH b1
MATCH (cat:ButtonCategory {name:'Security'})
CREATE b1-[:MEMBER_OF]->(cat);

//************ property letting *************
MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b6',  type:'action', name:'property letting', description:'use this to notify us of a property viewing.  Access is granted <strong> monday to friday: 9am to 7pm</strong> and <strong> saturday: 10am to 4pm </strong> we cannot provide access on sundays and bank holidays.  Special appointment viewings outside these times may be made via the owner and development manager', created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'which estate agent / person is the appointment with?', type:'freetext', values:'{"length":"small"}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'what time is the appointment?', type:'date', values:'{"fidelity":"dateandtime"}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thank you, we will contact you if there are any issues with this appointment'})
WITH b1
MATCH (cat:ButtonCategory {name:'Concierge'})
CREATE b1-[:MEMBER_OF]->(cat);


MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {created:1459245492083, description:'wharfside pet policy', name:'pet policy',buttonId:'0x54f073c9dd000000', type:'information', modified:1459245492083})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (e1:Webhook {description:'This provides the latest policy on pets.', name:'pet policy', method:'GET', parameters:'{"static":[],"dynamic":[]}', webhookId: '0x54f073c9dd800000', url:'http://red:1880/petpolicy', returntype:'text'})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Residents Association'})
CREATE b1-[:MEMBER_OF]->(cat);


//************ dry cleaning - goes to dry cleaner *************
//MATCH (d:Development {name:'Wharfside'})
//MATCH (s:Status {type:'published'})
//WITH d,s
//CREATE (b1:Button {buttonId:'b7',  type:'action', name:'dry cleaning', description:'use this button if you would like to have items dry cleaned.  We have an arrangement with <strong>[Dry Cleaners inc]</strong> who we believe offer the best service in this area.  Costs are: shirts <strong>£5</strong>,  single bed sheets (2 pillow cases, duvet covers, and sheet): <strong>£25</strong>, double bed sheets:   (2 pillow cases, duvet covers, and sheet):  <strong>£29</strong>, suits: <strong>£25</strong>, dresses: <strong>£25</strong>.', created:1453394322, modified:1453394322})
//CREATE (b1)-[:BELONGS_TO]->(d)
//CREATE (b1)-[:HAS_STATUS]->(s)
//CREATE (q0:Question {questionId:'q0', number:0, question:'please list the items you would like cleaned', type:'freetext', values:'{"length":"medium"}'})
//CREATE (q1:Question {questionId:'q1', number:1, question:'would you like them to be returned to you (£5)?', type:'options', values:'{"options":"yes,no","multiple":"single","none":true}'})
//CREATE (q2:Question {questionId:'q2', number:2, question:'which service do you require?', type:'options', values:'{"options":"48 hours, 24 hours (+£5), 2 hours (+15)","multiple":"single","none":true}'})
//CREATE (b1)-[:ASKS]->(q0)
//CREATE (b1)-[:ASKS]->(q1)
//CREATE (b1)-[:ASKS]->(q2)
//WITH b1
//MATCH (bag1:AccessGroup {name:'tenant'})
//CREATE (bag1)-[:CAN_PRESS]->(b1)
//WITH b1
//CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thank you, we will be in contact to arrange the details shortly.'})
//WITH b1
//MATCH (cat:ButtonCategory {name:'Dry Cleaner'})
//CREATE b1-[:MEMBER_OF]->(cat);

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
CREATE (q0:Question {values:'{"store":{"storeId":"parcels","name":"parcels"}}', questionId: 'datastoreitem',number:1, question:'the parcel that has been picked up', type:'datastoreitem'})
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
CREATE (e1:Webhook {description:'This will return the data from a log store in a table.', name:'logstore', method:'GET', parameters:'{"static":[{"type":"datastore","id":"datastore","title":"name of the logstore you would like to display","value":{"storeId":"collected", "schema":[{"path":"1","alias":"user signature"},{"path":"0.1","alias":"parcel description"},{"path":"0.0","alias":"the user"}]}}],"dynamic":[]}', webhookId:'0x549fe6e161800001', url:'http://red:1880/logstore', returntype:'tabular'})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Concierge'})
CREATE b1-[:MEMBER_OF]->(cat);
