MATCH (d:Development {name:'Wharfside'})
WITH d
CREATE (maintencebg: ButtonCategory {categoryId:'115',name:'Maintenance'})
CREATE (conciergebg: ButtonCategory {categoryId:'116',name:'Concierge'})
CREATE (drycleanerbg: ButtonCategory {categoryId:'117',name:'Dry Cleaner'})
CREATE(securitybg: ButtonCategory {categoryId:'118',name:'Security'})
CREATE(residentsbg: ButtonCategory {categoryId:'118b',name:'Residents Association'})

CREATE (maintencebg)-[:BELONGS_TO]->(d)
CREATE (conciergebg)-[:BELONGS_TO]->(d)
CREATE (drycleanerbg)-[:BELONGS_TO]->(d)
CREATE (securitybg)-[:BELONGS_TO]->(d)
CREATE (residentsbg)-[:BELONGS_TO]->(d);
