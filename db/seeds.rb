Product.destroy_all
product = Product.create(name: "Xbox Series X", price: 4.99, image_url: "https://m.media-amazon.com/images/I/61JGKhqxHxL._SL1500_.jpg", description: "Introducing Xbox Series X, the fastest, most powerful Xbox ever. Play thousands of titles from four Generations of Consoles - all games look and play best on Xbox Series X. At the heart of Series X is the Xbox Velocity architecture, which pairs a custom SSD with integrated software for faster, streamlined gameplay with significantly reduced load times. Seamlessly move between multiple games in a Flash with quick resume. Explore rich new worlds and enjoy the action like never before with the unmatched 12 Teraflops of raw graphic processing power. Enjoy 4K gaming at up to 120 frames per second, advanced 3D spatial sound, and more. Get started with an instant library of 100+ high-quality games, including all new Xbox Game Studios titles the day they launch like Halo Infinite, with Xbox Game Pass ultimate (membership sold separately). ")

product = Product.create(name: "Sony Playstation", price: 989.00, image_url: "https://m.media-amazon.com/images/I/31JaiPXYI8L._AC_.jpg", description: "Explore uncharted virtual territories and slay dragons with this sleek Sony PlayStation 5 gaming console. The 825GB SSD allows ultra-fast load times, while 3-D audio output produces crisp acoustics. This Sony PlayStation 5 gaming console supports haptic feedback for effortless communication in multiplayer setups, and adaptive triggers allow immersive gameplay. ")

product = Product.create(name: "Nintendo Switch", price: 299.00, image_url: "https://m.media-amazon.com/images/I/61-PblYntsL._AC_SL1500_.jpg", description: "Get the gaming system that lets you play the games you want, wherever you are, however you like. Includes the Nintendo Switch console and Nintendo Switch dock in black, with contrasting left and right JoyCon controllers-one red, one blue. Also includes all the extras you need to get started. Model number: HAC-001(-01) (product serial number begins with “XKW”) This model includes battery life of approximately 4.5 - 9 hours. The battery life will depend on the games you play. For instance, the battery will last approximately 5.5 hours for The Legend of Zelda: Breath of the Wild (games sold separately). ")

product = Product.create(name: "Hyena", price: 199.00, image_url: "https://a-z-animals.com/media/animals/images/original/hyena_3.jpg", description: "Hungry Hyena that will eat small children and crumbs off the kitchen floor. Has a temper and is not house trained. ")

supplier = Supplier.create(name: "Hyena Farm", email: "laughing@hyena.com", phone_number: "123-456-7890")

supplier = Supplier.create(name: "Nintendo", email: "supply@n.com", phone_number: "000-000-0000")

supplier = Supplier.create(name: "Sony", email: "inventory@ex", phone_number: "098-654-3210")

category = Category.new(name: "electronics")
category = Category.new(name: "pets")

category_product = CategoryProduct.create(product_id: 1, category_id: 2)
category_product = CategoryProduct.create(product_id: 2, category_id: 1)
