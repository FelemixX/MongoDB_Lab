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

//Пользователи

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

//Отзывы

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
