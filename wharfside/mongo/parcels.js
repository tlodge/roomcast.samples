db.stores.insert({'storeId':'parcels', 'name':'parcels', 'schema':[
		{
			"id" : 1,
			"label" : "which user would you like to notify?",
			"type" : "users"
		},
		{
			"id" : 2,
			"label" : "delivery type",
			"type" : "options"
		},
		{
			"id" : "presser",
			"label" : "button presser",
			"type" : "user"
		},
		{
			"id" : "pressed",
			"label" : "pressed",
			"type" : "ts"
		}]
});

db.stores.insert({'storeId':'collected', 'name':'collected', 'schema':[
			{
				"id" : 1,
				"label" : "the parcel that has been picked up",
				"type" : "datastoreitem",
				"value":[
							{
								"id" : 1,
								"label" : "which user would you like to notify?",
								"type" : "users"
							},
							{
								"id" : 2,
								"label" : "delivery type",
								"type" : "options"
							},
							{
								"id" : "presser",
								"label" : "button presser",
								"type" : "user"
							},
							{
								"id" : "pressed",
								"label" : "pressed",
								"type" : "ts"
							}
				] 
			},
			{
				"id" : 2,
				"label" : "please provide your signature",
				"type" : "signature"
			},
			{
				"id" : "presser",
				"label" : "button presser",
				"type" : "user"
			},
			{
				"id" : "pressed",
				"label" : "pressed",
				"type" : "ts"
			}
]});


