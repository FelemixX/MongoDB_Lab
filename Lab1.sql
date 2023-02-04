#create user and schema before executing this code

use test

    db.users.insertOne({username: 'jones'})
    db.users.find()
    db.users.insertOne({username:'smith'})
    db.users.countDocuments()
    db.users.find()
    db.users.updateMany({username:'smith'}, {$set :{country:'canada'}})

    db.users.updateMany(
        {username: 'smith'},
        {
        $set:
            {
                favorites:
                    {
                        cities:['chicago', 'rome'], movies: ['matrix', 'the sting']
                    }
            }
        }
    )

    db.users.updateMany(
        {
            username: 'jones'
        },
            {
                $set:
                {
                    favorites:
                    {
                        movies: ['rocky', 'winter']
                    }
                }
            }
    )

    db.users.find(
        {
            'favorites.movies': 'matrix'
        }
    )

    db.users.updateMany(
        {
            'favorites.movies': 'matrix'
        },
        {
            $addToSet:
            {
                'favorites.movies': 'matrix2'
            },
        },
        false,
         true
    )

   db.users.deleteMany(
        {
            'favorites.cities': 'rome'
        }
   );

   for(i = 0; i < 200000; i++) {
        {
            db.numbers.insertOne(
                 {num: i}
            );
        }
   }

   db.numbers.count()
   db.numbers.find(
       {
            num: 500
       }
   )

   db.numbers.find(
       {
            num:
            {
                $gt: 19995
            }
       }
   )


   db.numbers.find(
       {
        num:
            {
                $lt: 500,
                $gt: 25,
            }
       }
   )

   db.numbers.find(
       {
        num:
        {
            $gt: 199995,
        }
       }
   ).explain()

   db.numbers.ensureIndex(
        {
            num: 1,
        }
   )

   db.numbers.getIndexes()

   show dbs
   show collections
   db.stats()
   db.help()
   db.users.help()
   db.numbers.save

   db.users.insertOne(
        {
            username: 'tom',
            age: 28,
            languages: []
        }
   )

   document = (
       {
            username: 'bill',
            age: 32,
            languages: ['english', 'french'],
       }
   )
   db.users.insertOne(document)

   db.createCollection(
        'profile',
        {
            capped: true,
            size: 500,
            max: 150,
        }
   )//29
   db.profile.find()

db.users.insertOne(
    {
         username:"tom",
         age:32,
         languages:["english"]
    }
)

db.users.find(
    {username:"tom"}
)

db.users.find(
    {languages: "german"}
)

db.users.find(
    {username:"tom", age:32}
)
db.users.find(
    {username:"tom", age:1}
)
db.users.find(
    {username:"tom", age:true, _id:false}
)
db.users.insertOne(
    {
        username:"alex",
        age:28
    },
    {
        company:
        {
            name:"microsoft",
            country:"usa"
        }
    }
)

db.users.find().limit(3)
db.users.find().skip(2)
db.users.find().sort({username: 1})
db.users.find().sort({username: 1}).skip(1).limit
db.users.find().sort({Snatural: -1}).limit

db.users.find(
    {
        username:"tom"
    },
    {
        languages:
        {
           Sslice: 1
        }
    }
)

db.users.find(
    {
        username: "tom"
    },
    {
        languages:
        {
            $slice: [-1,1]
        }
    }
)

db.users.find({}, {username: 11})
db.users.find({}, {username: 1})
db.users.find({username:"tom"}).count()

db.users.find({username:"tom"}).skip(2).count(true)

db.users.distinct('username')
db.profile.deleteMany()
db.profile.drop()
db.users.find(
    {
        username:"tom"
    },
    {
        languages:
        {
            $slice:1
        }
    }
)

db.users.find(
    {
        username: "tom"
    },
    {
        languages:
        {
            $slice:[-1,1]
        }
    }
)

db.users.find({age: {$ne:22}})
db.users.find({age: {$in:[22,32]}})
db.users.find({age: {Snin: [22,32]}})
db.users. find({languages: {Sall:["english", "french" ]}})

db.users.find(
    {
        $or:
        [
            {
                username:"tom"
            },
            {
                age:22
            }
        ]
    }
)
db.users.find(
    {
        username:"tom",
        $or:
        [
            {
                age:22
            },
            {
                languages:"french"
            }
        ]
    }
)

db.users.find({languages: {$size: 2}})

db.users.find({username: {$regex: '^b'}})

db.users.insertOne(
    {
        username: 'eugene',
        age: 29,
        languages:
        [
            'english',
            'spanish',
            'french',
        ]
    }
)

db.users.updateOne(
    {
        username: 'tom',
    },
    {
        $set:
        {
            username: 'tom',
            age: 25,
            married: false,
        }
    },
    {
        multi: true
    }
)

db.users.updateOne(
    {
        username: 'tom',
    },
    {
        $inc: {
            salary: 100
        }
    }
)

db.users.updateOne(
    {
        username: 'tom',
    },
    {
        $unset: {
            salary: 1
        }
    }
)

db.users.updateOne(
    {
        username: 'tom',
    },
    {
        $unset: {
            salary: 1,
            age: 1,
        }
    }
)

db.users.updateOne(
    {
        username: 'tom'
    },
    {
        $addToSet: {
            languages: 'spanish',
        }
    }
)

db.users.updateOne(
    {
        username: 'tom'
    },
    {
        $addToSet: {
            languages: {
                $each: [
                    'russian',
                    'italian',
                ]
            }
        }
    }
)

db.users.updateOne(
    {
        username: 'tom',
    },
    {
        $pullAll: {
            languages: [
                'english',
                'french',
                'german',
            ]
        }
    }
)

db.users.deleteMany(
    {
        age: {
            $lt: 30
        }
    }
)

db.users.deleteMany(
    {
        username: 'tom'
    },
    true
)
