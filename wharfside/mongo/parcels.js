use buttonkit

db.stores.insert({'storeId':'parcels', 'name':'parcels', 'schema':[
		{
			"id" : 1,
			"label" : "which user would you like to notify?",
			"type" : "users",
			"value" : {}
		},
		{
			"id" : 2,
			"label" : "delivery type",
			"type" : "options",
			"value" : [],
		},
		{
			"id" : "presser",
			"label" : "button presser",
			"type" : "user",
			"value" : ""
		},
		{
			"id" : "pressed",
			"label" : "pressed",
			"type" : "ts",
			"value" : 0
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
								"type" : "users",
								"value" : {}
							},
							{
								"id" : 2,
								"label" : "delivery type",
								"type" : "options",
								"value" : [],
							},
							{
								"id" : "presser",
								"label" : "button presser",
								"type" : "user",
								"value" : ""
							},
							{
								"id" : "pressed",
								"label" : "pressed",
								"type" : "ts",
								"value" : 0
							}
				] 
			},
			{
				"id" : 2,
				"label" : "please provide your signature",
				"type" : "signature",
				"value" : ""
			},
			{
				"id" : "presser",
				"label" : "button presser",
				"type" : "user",
				"value" : ""
			},
			{
				"id" : "pressed",
				"label" : "pressed",
				"type" : "ts",
				"value" : 0
			}
]});


