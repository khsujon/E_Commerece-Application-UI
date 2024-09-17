class ModelData {
  String? id;
  String? name;
  String? image;
  double? price;
  String? category;
  double? rating;
  int quantity = 1;
  String? details;
  String? selectedVariant;
  List<String>? variants; // New field for storage or color variants

  ModelData({
    this.id,
    this.name,
    this.image,
    this.price,
    this.details,
    this.category,
    this.rating,
    this.variants,
    this.selectedVariant, // Initialize variants here
  });
}

List<ModelData> productModel = [
  // Smartphone
  ModelData(
    id: "1",
    name: "iPhone 14 Pro",
    image: 'images/iphone-14-pro.png',
    price: 1000,
    category: 'Smartphone',
    details:
        'iPhone 14 Pro comes with Apple A17 Bionic chip, a 48MP main camera for stunning photography, and a Super Retina XDR OLED display. It also supports 5G and offers up to 1TB of storage.',
    rating: 5.0,
    variants: ['128GB', '256GB', '1TB'], // Storage variants
  ),
  ModelData(
    id: "2",
    name: "Samsung Galaxy S23",
    image: 'images/sm23.png',
    price: 900,
    category: 'Smartphone',
    details:
        'Samsung Galaxy S23 features the Snapdragon 8 Gen 2 processor, a 50MP camera, and a 6.1-inch AMOLED display with 120Hz refresh rate. It has 8GB of RAM and 256GB of storage.',
    rating: 4.8,
    variants: ['128GB', '256GB', '512GB'], // Storage variants
  ),
  ModelData(
    id: "3",
    name: "Google Pixel 7",
    image: 'images/pixel7pro.png',
    price: 800,
    category: 'Smartphone',
    details:
        'Google Pixel 7 is powered by the Google Tensor chip, includes a 50MP camera for superior low-light photography, and offers a clean, ad-free Android experience with 5 years of updates.',
    rating: 4.7,
    variants: ['128GB', '256GB', '1TB'], // Storage variants
  ),
  ModelData(
    id: "4",
    name: "OnePlus 11",
    image: 'images/op11.png',
    price: 700,
    category: 'Smartphone',
    details:
        'OnePlus 11 comes with Snapdragon 8 Gen 2 processor, a 50MP Hasselblad-tuned camera system, and a 120Hz Fluid AMOLED display. It also supports fast charging and 5G connectivity.',
    rating: 4.5,
    variants: ['128GB', '256GB', '1TB'], // Storage variants
  ),

  // Headphones with color variants
  ModelData(
    id: "5",
    name: "Sony WH-1000XM5",
    image: 'images/SonyWH.png',
    price: 350,
    category: 'Headphone',
    details:
        'Sony WH-1000XM5 offers best-in-class noise cancellation, 30-hour battery life, and superior sound quality. It also features touch controls and supports voice assistants like Google and Alexa.',
    rating: 4.9,
    variants: ['Black', 'White', 'Blue'], // Color variants
  ),
  ModelData(
    id: "6",
    name: "Bose QuietComfort 45",
    image: 'images/BoseQuietComfort.png',
    price: 329,
    category: 'Headphone',
    details:
        'Bose QuietComfort 45 features world-class noise cancellation, premium sound quality, and a lightweight design. It supports multipoint Bluetooth pairing and has a 24-hour battery life.',
    rating: 4.8,
    variants: ['Black', 'White', 'Yellow'], // Color variants
  ),
  ModelData(
    id: "7",
    name: "AirPods Max",
    image: 'images/AirPods.png',
    price: 549,
    category: 'Headphone',
    details:
        'Apple AirPods Max deliver spatial audio with dynamic head tracking, active noise cancellation, and a custom-designed driver for high-fidelity sound. It comes with a premium aluminum frame.',
    rating: 4.6,
    variants: ['Black', 'White', 'Green'], // Color variants
  ),
  ModelData(
    id: "8",
    name: "Sennheiser HD 660S",
    image: 'images/Sennheiser.png',
    price: 499,
    category: 'Headphone',
    details:
        'Sennheiser HD 660S is an open-back headphone designed for audiophiles, offering balanced sound and deep bass. It has a lightweight design for extended listening comfort.',
    rating: 4.7,
    variants: ['Black', 'Blue', 'Pink'], // Color variant
  ),

  // Laptop with storage variants
  ModelData(
    id: "9",
    name: "MacBook Pro M2",
    image: 'images/MacBook.png',
    price: 2000,
    category: 'Laptop',
    details:
        'The MacBook Pro M2 features the powerful M2 chip, 16GB RAM, a 512GB SSD, and a stunning Retina display. It provides exceptional performance for video editing and graphic design.',
    rating: 5.0,
    variants: ['512GB', '1TB', '2TB'], // Storage variants
  ),
  ModelData(
    id: "10",
    name: "Dell XPS 13",
    image: 'images/Dell XPS 13.png',
    price: 1500,
    category: 'Laptop',
    details:
        'Dell XPS 13 is equipped with the 11th Gen Intel Core i7 processor, 16GB RAM, 1TB SSD, and an InfinityEdge display. It offers top-tier performance in a slim, compact form factor.',
    rating: 4.8,
    variants: ['512GB', '1TB'], // Storage variants
  ),
  ModelData(
    id: "11",
    name: "HP Spectre x360",
    image: 'images/HP Spectre x360.png',
    price: 1400,
    category: 'Laptop',
    details:
        'HP Spectre x360 features a convertible design with a 4K OLED display, 16GB RAM, Intel Core i7 processor, and a sleek design for portability and productivity.',
    rating: 4.7,
    variants: ['512GB', '1TB'], // Storage variants
  ),
  ModelData(
    id: "12",
    name: "Lenovo ThinkPad",
    image: 'images/Lenovo ThinkPad X1 Carbon.png',
    price: 1800,
    category: 'Laptop',
    details:
        'ThinkPad X1 Carbon offers 12th Gen Intel Core i7, 16GB RAM, and 1TB SSD. Known for its durable carbon fiber chassis, it’s perfect for business professionals.',
    rating: 4.9,
    variants: ['512GB', '1TB'], // Storage variants
  ),

  // Gaming Consoles with storage variants
  ModelData(
    id: "13",
    name: "Xbox Series X",
    image: 'images/Xbox Series X.png',
    price: 499,
    category: 'Gaming Console',
    details:
        'Xbox Series X offers 4K gaming with 12 teraflops of power, a 1TB SSD, and backward compatibility for Xbox games. It supports Dolby Atmos and 120fps gaming.',
    rating: 5.0,
    variants: ['1TB', '512GB', '256GB'], // Storage variant
  ),
  ModelData(
    id: "14",
    name: "PlayStation 5",
    image: 'images/PlayStation 5.png',
    price: 499,
    category: 'Gaming Console',
    details:
        'PlayStation 5 delivers an immersive gaming experience with 4K resolution, haptic feedback, and an ultra-fast SSD. It supports up to 120fps and 3D audio for enhanced gameplay.',
    rating: 4.9,
    variants: ['1TB', '512GB'], // Storage variant
  ),
  ModelData(
    id: "15",
    name: "Nintendo Switch",
    image: 'images/Nintendo Switch.png',
    price: 299,
    category: 'Gaming Console',
    details:
        'Nintendo Switch offers handheld gaming versatility, dockable for TV play, and supports exclusive games like Zelda and Mario. It features a 6.2-inch screen and Joy-Con controllers.',
    rating: 4.8,
    variants: ['32GB', '128GB'], // Storage variant
  ),
  ModelData(
    id: "16",
    name: "Steam Deck",
    image: 'images/G03.png',
    price: 399,
    category: 'Gaming Console',
    details:
        'Steam Deck is a portable gaming console with PC-level power, a 7-inch display, and compatibility with thousands of Steam games. It has 512GB of storage and supports cloud saves.',
    rating: 4.7,
    variants: ['512GB', '256GB', '1TB'], // Storage variant
  ),

  // Accessories with color variants
  ModelData(
    id: "17",
    name: "Apple MagSafe Charger",
    image: 'images/Apple MagSafe Charger.png',
    price: 39,
    category: 'Accessories',
    details:
        'Apple MagSafe Charger provides faster wireless charging for iPhone 12 and later models, aligning perfectly with the back of your device.',
    rating: 4.5,
    variants: ['White', 'Blue', 'Pink'], // Color variant
  ),
  ModelData(
    id: "18",
    name: "Logitech MX Master 3",
    image: 'images/Logitech MX Master 3.png',
    price: 99,
    category: 'Accessories',
    details:
        'Logitech MX Master 3 features ultra-fast scrolling, ergonomic design, and custom buttons for productivity. It works seamlessly across multiple devices.',
    rating: 4.9,
    variants: ['Black', 'Gray', 'White'], // Color variants
  ),
  ModelData(
    id: "19",
    name: "Anker PowerCore 10000",
    image: 'images/Anker PowerCore 10000.png',
    price: 49,
    category: 'Accessories',
    details:
        'Anker PowerCore 10000 is a portable power bank with a 10000mAh battery capacity, providing fast charging and compact design for travel and emergencies.',
    rating: 4.8,
    variants: ['Black', 'Blue', 'Yellow'],
  ),
  ModelData(
    id: "20",
    name: "Samsung T7 SSD",
    image: 'images/Samsung T7 SSD.png',
    price: 129,
    category: 'Accessories',
    details:
        'Samsung T7 SSD offers fast, reliable storage with up to 1TB capacity and USB 3.2 Gen 2 speeds. It’s lightweight and portable, making it perfect for on-the-go data transfers.',
    rating: 4.9,
    variants: ['Black', 'Gray', 'White'],
  ),
];

List<ModelData> DiscountProductModel = [
  // Smartphone
  ModelData(
    id: "1",
    name: "iPhone 14 Pro",
    image: 'images/iphone-14-pro.png',
    price: 1000,
    category: 'Smartphone',
    details:
        'iPhone 14 comes with Apple A17 Bionic, 48MP main camera, OLED display.',
    rating: 5.0,
  ),
  ModelData(
    id: "14",
    name: "PlayStation 5",
    image: 'images/PlayStation 5.png',
    price: 499,
    category: 'Gaming Console',
    details:
        'PlayStation 5 features 4K gaming, haptic feedback, and an ultra-fast SSD.',
    rating: 4.9,
  ),
  ModelData(
    id: "11",
    name: "HP Spectre x360",
    image: 'images/HP Spectre x360.png',
    price: 1400,
    category: 'Laptop',
    details:
        'HP Spectre x360 features Intel i7, 16GB RAM, convertible design, and 4K OLED display.',
    rating: 4.7,
  ),
  ModelData(
    id: "18",
    name: "Logitech MX Master 3",
    image: 'images/Logitech MX Master 3.png',
    price: 99,
    category: 'Accessories',
    details:
        'Logitech MX Master 3 offers precise control, ergonomic design, and advanced customization.',
    rating: 4.9,
  ),
];

List<ModelData> CartProductModel = [
  ModelData(
      id: "13",
      name: "Xbox Series X",
      image: 'images/Xbox Series X.png',
      price: 499,
      category: 'Gaming Console',
      details:
          'Xbox Series X offers 4K gaming with 12 teraflops of power, a 1TB SSD, and backward compatibility for Xbox games. It supports Dolby Atmos and 120fps gaming.',
      rating: 5.0,
      variants: ['1TB', '512GB', '256GB'], // Storage variant
      selectedVariant: '1TB'),
  ModelData(
      id: "8",
      name: "Sennheiser HD 660S",
      image: 'images/Sennheiser.png',
      price: 499,
      category: 'Headphone',
      details:
          'Sennheiser HD 660S is an open-back headphone designed for audiophiles, offering balanced sound and deep bass. It has a lightweight design for extended listening comfort.',
      rating: 4.7,
      variants: ['Black', 'Blue', 'Pink'], // Color variant
      selectedVariant: 'Blue'),
  ModelData(
      id: "17",
      name: "Apple MagSafe Charger",
      image: 'images/Apple MagSafe Charger.png',
      price: 39,
      category: 'Accessories',
      details:
          'Apple MagSafe Charger provides faster wireless charging for iPhone 12 and later models, aligning perfectly with the back of your device.',
      rating: 4.5,
      variants: ['White', 'Blue', 'Pink'], // Color variant
      selectedVariant: 'Pink'),
  ModelData(
      id: "18",
      name: "Logitech MX Master 3",
      image: 'images/Logitech MX Master 3.png',
      price: 99,
      category: 'Accessories',
      details:
          'Logitech MX Master 3 features ultra-fast scrolling, ergonomic design, and custom buttons for productivity. It works seamlessly across multiple devices.',
      rating: 4.9,
      variants: ['Black', 'Gray', 'White'], // Color variants
      selectedVariant: 'Black'),
];
