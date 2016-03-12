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
CREATE (q1:Question {questionId:'q1', number:1, question:'where the leak is coming from (if known)', type:'freetext', values:'{"length":160}'})
CREATE (q2:Question {questionId:'q2', number:2, question:'anything else we need to know', type:'freetext', values:'{"length":160}'})
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
CREATE (b1:Button {buttonId:'b2',  type:'action', name:'new fob', description:'Use this button if you require a new parking? door? fob.  If the fob is a re-issue (i.e. it has been lost/damaged), the charge for a new one is £35. If the fob is faulty we will replace it free of charge.  If you are a new resident, we require a £70 deposit.  We will typically aim to have a new fob ready for you within 2-3 working days and will contact you when it is ready to be picked up.',created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'why do you need a new fob?', type:'options', values:'{"options":"new resident, lost, damaged, stopped working","multiple":"single","none":true}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'how many do you need?', type:'options', values:'{"options":"1,2,3,4","multiple":"single","none":true}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks, your new fob request is now in the system.  We will aim get back to you within 1-3 working days for you to pick it up from the concierge's office.'})
WITH b1
MATCH (cat:ButtonCategory {name:'Concierge'})
CREATE b1-[:MEMBER_OF]->(cat);

//************ key release - goes to concierge *************

MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b3',  type:'action', name:'key release', description:'Use this button when you would like us to <strong>release keys</strong> to a third party to get access to your apartment.  Although we will do our best to keep an eye on anyone entering your apartment <strong>we cannot be accept liability for any issues that arise during the access period</strong>',created:1453394322, modified:1453394322})
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
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thanks, we will issue the keys to your aparment as per your instructions; we will inform you when the keys have been picked up.'})
WITH b1
CREATE (e1:Webhook {webhookId:'wh2',name:"notify staff", method:"POST", url:"http://red:1880/notify", parameters:'{"static":[{"id":"message","value":"my new message!"},{"id":"residentids","value":[{"id":"122","name":"owners"},{"id":"123","name":"tenants"},{"id":"124","name":"residents"}]}]}'})
CREATE (b1)-[:CALLS]->(e1)
WITH b1
MATCH (cat:ButtonCategory {name:'Concierge'})
CREATE b1-[:MEMBER_OF]->(cat);


//************ property issue - goes to maintenance *************
MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b4',  type:'action', name:'property issue', description:'use this button to report any issues related to the common parts of wharfside (faulty doors, worn carpets, broken lights etc).  These will be sent immediately to the maintenance team who aim to investigate all reports within 2 hours.' created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'how urgent is it?', type:'options', values:'{"options":"high, medium, low","multiple":"single","none":true}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'where is the issue', type:'options', values:'{"options":"north block, south block, grounds, lifts, other","multiple":"single","none":true}'})
CREATE (q2:Question {questionId:'q2', number:2, question:'please describe the issue', type:'freetext', values:'{"length":160}'})
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
CREATE (b1:Button {buttonId:'b5',  type:'action', name:'report noise!', description:'use this button when there is excessive noise between <strong> 10pm and 7am </strong> that has been going on for more than <strong> 15 </strong> minutes.  Your report will be logged in the system for future reference and will be correlated with similar reports, should we need to take further action.' created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'what is the source of the noise?', type:'options', values:'{"options":"fellow resident, non-residents, machinery, vehicle, other","multiple":"single","none":true}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'is it still happening now?', type:'options', values:'{"options":"yes,no","multiple":"single","none":true}'  
CREATE (q2:Question {questionId:'q2', number:2, question:'how long has it been going on for?', type:'options', values:'{"options":"15 min, 1 hour, an hour plus","multiple":"single","none":true}'
CREATE (q3:Question {questionId:'q3', number:3, question:'is this the first time you have been disturbed by this noise?', type:'options', values:'{"options":"yes,no","multiple":"single","none":true}' 
CREATE (q4:Question {questionId:'q4', number:4, question:'is this the first time you have reported this noise?', type:'options', values:'{"options":"yes,no","multiple":"single","none":true}' 
CREATE (q5:Question {questionId:'q5', number:5, question:'is there anything else we should know?', type:'freetext', values:'{"length":160}'})
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
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thank you for the report.  We will aim to investigate all noise disturbances promptly.'})
WITH b1
MATCH (cat:ButtonCategory {name:'Security'})
CREATE b1-[:MEMBER_OF]->(cat);


//************ antisocial behaviour - goes to security *************
MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b6',  type:'action', name:'antisocial behaviour', description:'use this button to notify us of any antisocial behaviour, for example: <strong> trespassing, vandalism, graffiti, litter</strong>.  We will aim to investigate any antisocial behaviour as a matter of priority.' created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'what is the issue?', type:'options', values:'{"options":"trespasser, vandalism, graffiti, litter, assault, other","multiple":"single","none":true}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'is it happening now?', type:'options', values:'{"options":"yes, no, not relevant","multiple":"single","none":true}'})
CREATE (q2:Question {questionId:'q2', number:2, question:'please provide further details if possible', type:'freetext', values:'{"length":160}'})
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


//************ dry cleaning - goes to dry cleaner *************
MATCH (d:Development {name:'Wharfside'})
MATCH (s:Status {type:'published'})
WITH d,s
CREATE (b1:Button {buttonId:'b7',  type:'action', name:'dry cleaning', description:'use this button if you would like to have items dry cleaned.  We have an arrangement with <strong>[Dry Cleaners inc]</strong> who we believe offer the best service in this area.  Costs are: shirts <strong>£5</strong>,  single bed sheets (2 pillow cases, duvet covers, and sheet): <strong>£25</strong>, double bed sheets:   (2 pillow cases, duvet covers, and sheet):  <strong>£29</strong>, suits: <strong>£25</strong>, dresses: <strong>£25</strong>.' created:1453394322, modified:1453394322})
CREATE (b1)-[:BELONGS_TO]->(d)
CREATE (b1)-[:HAS_STATUS]->(s)
CREATE (q0:Question {questionId:'q0', number:0, question:'please list the items you would like cleaned', type:'freetext', values:'{"length":160}'})
CREATE (q1:Question {questionId:'q1', number:1, question:'would you like them to be returned to you (£5)?', type:'options', values:'{"options":"yes,no","multiple":"single","none":true}'})
CREATE (q2:Question {questionId:'q2', number:2, question:'which service do you require?', type:'options', values:'{"options":"48 hours, 24 hours (+£5), 2 hours (+15)","multiple":"single","none":true}'})
CREATE (b1)-[:ASKS]->(q0)
CREATE (b1)-[:ASKS]->(q1)
CREATE (b1)-[:ASKS]->(q2)
WITH b1
MATCH (bag1:AccessGroup {name:'tenant'})
CREATE (bag1)-[:CAN_PRESS]->(b1)
WITH b1
CREATE (b1)-[:RESPONDS_WITH]->(r:Response {text:'thank you, we will be in contact to arrange the details shortly.'})
WITH b1
MATCH (cat:ButtonCategory {name:'Dry Cleaner'})
CREATE b1-[:MEMBER_OF]->(cat);