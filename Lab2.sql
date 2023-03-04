//https://observablehq.com/@hugodf/mongodb-objectid-generator

//Товары
doc = {
    _id: new ObjectId('4c4b1476238d3b4dd5003981'),
    slug: 'wheel-barrow-9092',
    sku: '9092',
    name: 'Extra large wheel barrow',
    description: 'Heavy duty wheel barrow',
    details: {
        weight: 47,
        weight_units: 'lbs',
        model_num: 4039283402,
        manufactured: 'Acme',
        color: 'green',
    },
    total_reviews: 4,
    averate_review: 4.5,
    pricing: {
        retail: 589700,
        sale: 498700,
    },
    pricing_history: [
        {
            retail: 529700,
            sale: 429700,
            start: new Date(2919, 4, 1),
            end: new Date(2010, 4, 8),
        },
        {
            retail: 529700,
            sale: 529700,
            start: new Date(2010, 4, 9),
            end: new Date(2010, 4, 16)
        },
    ],
    category_ids: [
        new ObjectId('6a5b1476238d3b4dd5000048'),
        new ObjectId('6a5b1476238d3b4dd5000049'),
    ],
    main_cat_id: new ObjectId('6a5b1476238d3b4dd5000048'),
    tags: [
        'tools',
        'gardening',
        'soil',
    ]
}
db.Catalog.insertOne(doc);

//Пользователи


product_id = db.Catalog.findOne()
review_by_item = db.reviews.findOne(
    {
       product_id: product_id['_id'],
    }
)
user_id = review_by_item['user_id']
user_who_bought = db.users.find(
    {
        '_id': user_id,
    }
)



doc0 = {
    _id: new ObjectId('63de7e015a0204da2005390d'),
    usernmame: 'kbanker',
    email: 'kylebanker@gmail.com',
    firt_name: 'Kyle',
    last_name: 'Banker',
    hashed_password: '$2y$10$glreEV.HdE3X5On6hqsE1OyF2M1DycBCjgrfa045h9Np6P.nLB6lC',
    addresses: [
        {
            name: 'home',
            street: '558 5th Street',
            city: 'Brooklyn',
            state: 'NY',
            zip: 10010,
        },
        {
            name: 'work',
            street: '1 E. 23rd Street',
            city: 'New York',
            state: 'NY',
            zip: 10010,
        }
    ],
    payment_methods: [
        {
            name: 'VISA',
            last_four: 1227,
            crypted_name: '63de7ee9fd5e5dca4faf5000',
            expiration_date: new Date(2014, 4),
        }
    ],
}
db.users.insertOne(doc0)
//Отзывы

db.users.find().count()

product_id = db.reviews.findOne()
product_by_review = db.Catalog.find(
    {
        _id: product_id['product_id'],
    }
)



doc1 = {
    _id: new ObjectId('4c4b1476238d3b4dd5000041'),
    product_id: new ObjectId('4c4b1476238d3b4dd5003981'),
    date: new Date(2010, 5, 7),
    title: 'Amazing',
    text: 'Has a squeaky wheel, but still a darn good wheel barrow.',
    rating: 4,
    user_id: new ObjectId('4c4b1476238d3b4dd5000041'),
    username: 'dgreenthumb',
    helpful_votes: 3,
    voter_ids: [
        new ObjectId('4c4b1476238d3b4dd5000041'),
        new ObjectId('7a4f0376238d3b4dd5000003'),
        new ObjectId('92c21476238d3b4dd5000032'),
    ]
}

doc11 = {
    _id: new ObjectId(),
    product_id: new ObjectId('4c4b1476238d3b4dd5003981'),
    date: new Date(2015, 4, 3),
    title: 'Poor',
    text: 'I am a poor man from the best Somailia. I have sold my wife for the internet connection. Please send me one for free.',
    rating: 4,
    user_id: new ObjectId('4c4b1476238d3b4dd5000041'),
    username: 'poormanshield',
    helpful_votes: 3,
    voter_ids: [
        new ObjectId('4c4b1476238d3b4dd5000041'),
        new ObjectId('7a4f0376238d3b4dd5000003'),
        new ObjectId('92c21476238d3b4dd5000032'),
    ]
}

doc11 = {
    _id: new ObjectId(),
    product_id: new ObjectId('4c4b1476238d3b4dd5003981'),
    date: new Date(2015, 4, 3),
    title: 'Gut',
    text: 'Obamna.',
    rating: 4,
    user_id: new ObjectId(),
    username: 'Lenin',
    helpful_votes: 3,
    voter_ids: [
        new ObjectId(),
    ]
}
db.reviews.insertOne(doc11)
//db.createCollection('reviews')
//db.reviews.insertOne(doc1)
//Категории

doc2 = {
    _id: new ObjectId('63de7f7a208e56eb9e4b7d35'),
    slug: 'gardening-tools',
    ancestors: [
        {
            name: 'home',
            _id: new ObjectId('63de7f7a208e56eb9e4b7d34'),
            slug: 'home',
        },
        {
            name: 'outdoors',
            _id: new ObjectId('63de7f7a208e56eb9e4b7d33'),
            slug: 'outdoors',
        }
    ],
    parent_id: new ObjectId('63de7f7a208e56eb9e4b7d33'),
    name: 'Gardering Tools',
    description: 'gardering gadgets ...',
}
db.createCollection('categories')
db.categories.insertOne(doc2)
//Заказы

doc3 = {
    _id: new ObjectId('63de80dd9154810be83acfcf'),
    user_id: ObjectId('63de80dd9154810be81acfcf'),
    state: 'CART',
    lines_items: [
        {
            _id: ObjectId('63de80dd9154810be81acfcd'),
            sku: '9092',
            name: 'Extra Large Wheel-barrow',
            quantity: 1,
            pricing: {
                retail: 1499,
                sale: 1299,
            },
        },
    ],
    shipping_address: {
        street: '588 5th Street',
        city: 'Brooklyn',
        state: 'NY',
        zip: 11215
    },
    sub_total: 6196,
}
//db.createCollection('orders')
db.orders.insertOne(doc3)

doc99 = {
    _id: new ObjectId(),
    steel_grade: '6B13',
    price: 1337,
    warehouse: [
       {
            _id: new ObjectId(),
            name: 'Main warehouse',
            location: {
                coordinates: [-73.856077, 40.848447],
                city_name: 'Something',
            },
       }
    ],
}
//db.createCollection('steel_catalog')
db.steel_catalog.insertOne(doc99)


//////////////////////////////////////////////////////
//1. найти все заказы данного пользователя 2. запросить пользователя которому принадлежит конкретный заказ.
product_id = db.Catalog.findOne()
review_by_item = db.reviews.findOne(
    {
       product_id: product_id['_id'],
    }
)
user_id = review_by_item['user_id']
user_who_bought = db.users.find(
    {
        '_id': user_id,
    }
)

//3. запрос находит товар с кратким названием wheel-barrow-9092
db.Catalog.findOne(
    {
        slug: 'wheel-barrow-9092'
    }
)

//4. Получить информацию о категории товара с кратким названием wheel-barrow-9092
let productInfo = db.Catalog.findOne({
        slug: 'wheel-barrow-9092'
    },
    {
        'main_cat_id': 1,
         '_id': 0
    }
)
//print(productInfo['main_cat_id'])
db.categories.findOne({
    _id: productInfo['main_cat_id']
})

//5. Запрос извлекает все обзоры, относящиеся к данном товару.
let productId = db.Catalog.findOne(
    {
        slug: 'wheel-barrow-9093'
    },
    {
        '_id': 1
    }
)
//print(productId['_id'])
db.reviews.find({
    product_id: productId['_id']
})

//6. Отображать отзывы в определенном порядке, например, сортировать результаты запроса по количеству проголосовавших за полезность отзыва.
let productId = db.Catalog.findOne(
    {
        slug: 'wheel-barrow-9093'
    },
    {
        '_id': 1
    }
)
//print(productId['_id'])
db.reviews.find({
        product_id: productId['_id']
}).sort({
    helpful_votes: -1
})

//7. Просмотр корневых категорий, в которых нет товаров.
let categoryInfo = db.categories.find({
    parent_id: null
})
categoryInfo.forEach(
    (elem, idx) => {
        db.Catalog.find({
            category_ids: categoryInfo['_id']
        })
    }
)

//8. Найти всех пользователей, проживающих в в Верхнем Манхэттене
db.users.find({
    addresses: {
        $elemMatch: {
            city: 'Upper Manhattan'
        }
    }
})

//9. Сгруппировать пользователей по приобретаемым ими товарам, ограничить результирующий набор заказами, сделанными в определенный период времени
db.orders.aggregate([
    {
        $match: {
            created_at: {
                $gte: "2015-01-01T00:00:00.000Z",
                $lte: "2019-12-31T00:00:00.000Z"
            }
        }
    },
    {
        $unwind: "$lines_items"
    },
    {
        $group: {
            _id: "$lines_items._id",
             user: {
                $push: "$user_id"
             },
             quantity: {
                $sum: 1
             }
        }
    },
    {
        $sort: {
            count: -1
        }
    },
])

db.orders.find()

db.orders.updateMany({}, { $set :{"created_at": null}})

//10. Построить составной индекс по артикулу и дате покупки
db.orders.createIndex({
     'lines_items.sku': 1,
     created_at: 1
})

//11.Запрос на поиск всех товаров, принадлежащих хотя бы одной из категорий
let catalog = db.Catalog.find()
catalog.forEach((elem, idx) => {
    if (elem['category_ids']) {
        print(elem)
    }
})

//12. Поиск товаров либо синего цвета либо произведенных компанией ACME
db.Catalog.find({
    $or: [
        {'details.color': 'blue'},
        {'details.manufactured': 'ACME',}
    ]
})

//13. Найти все товары, имеющие одновременно теги gift(подарок) и тег garden(сад)
db.Catalog.find({
    $and: [
        {'tags': 'gift'},
        {'tags': 'garden',}
    ]
})

//14. Поиск всех товаров производства фирмы ACME без тега gardering (садоводство)
db.Catalog.find({
    "details.manufactured": "Acme",
     tags: {
        $nin: [
            "gardening"
        ]
     }
})

//15.Найти всех пользователей, фамилии которых начинаются не с буквы В
db.users.find({
    "last_name": {
        $not: /^B/
    }
})

//16. .Найти товары, помеченные одним из тегов gift или holiday и одним из тегов gardering или landscaping.
db.Catalog.find({
    $and: [{
        tags: {
            $in: [
                "gift",
                 "holiday"
            ]
        }
    },
    {
    tags: {
        $in: [
            "gardening",
             "landscaping"
        ]
    }
    }]
})

//17. Запросить товары, для которых не заданы цвета
db.Catalog.find({
    'details.color': {$exists: 0}
})

//18. Поиск товара с тегом 'soil' (почва)
db.Catalog.find({
    'tags': 'soil'
})

//19. Можно считать, что в нулевом элементе массива addresses всегда хранится основной адрес доставки.
//Найти всех пользователей, для которых основной адрес доставки находится в Нью-Йорке
db.users.find({
    "addresses.0.city": "New York"
})

//20. Найти всех пользователей, домашний адрес которых находится в Нью-Йорке.
db.users.find({
"addresses.1.city": "New York"
})

//21. Найти пользователей, имеющих ровно три адреса
db.users.find({
    addresses: {
        $size: 3
    }
})

//22. Запрос на получение отзывов данного пользователя, содержащих в тексте слово best или worst (без учета регистра).
db.reviews.find({
    $or: [
        {text: /best/i},
        {text: /worst/i}
    ]
})

//23. Найти документы, в которых идентификатор хранится в виде строки ////У меня все id имеют тип objectid, поэтому буду искать другой столбец. Принцип аналогичный
db.Catalog.find({
    name: {
        $type: 'string'
    }
})

//24. Вернуть первые 12 отзывов или последние 5.
db.reviews.find().sort({date: 1}).limit(12)
db.reviews.find().sort({date: -1}).limit(5)

//25. Пропустить первые 24 отзыва и возвратить не более 12 отзывов.
db.reviews.find().sort({date: 1}).skip(24).limit(12)

//26. Подсчитать общее число голосов, отданных за все отзывы одного пользователя, а также усреднить число голосов по всем отзывам каждого пользователя.
db.reviews.aggregate([
    {
        $group: {
             _id: "$user_id",
             total: {
                $sum: "$helpful_votes"
             },
             average: {
                $avg: "$helpful_votes"
             }
        }
    },
    {
        $sort: {
            _id: 1
        }
    }
])

//27. Получить статистику по продажам. Сколько товаров продано в каждом месяце?
db.orders.aggregate([
    {$unwind: "$lines_items"},
    {
        $group: {
            _id: {
                $month: "$created_at"
            },
            total: {
                $sum: "$lines_items.quantity"
            }
        }
    },
    {
        $sort: {
            _id: 1
        }
    }
])

//28. Найти отзыв, за который подано наибольшее число голосов.
db.reviews.find().sort({helpful_votes: -1}).limit(1)
// 29. Найти отзыв, за который подано наименьшее число голосов.
db.reviews.find().sort({helpful_votes: 1}).limit(1)
// 30. Отобрать различные теги для товаров из категории «Садовые инструменты»
let catalogId = db.categories.findOne({slug: "gardening-tools"})._id
db.Catalog.distinct(
    "tags",
     {main_cat_id: catelogId}
)
