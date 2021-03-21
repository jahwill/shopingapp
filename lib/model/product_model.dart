import 'dart:ui';

class Product {
  int id, size, price;
  String image, title, description;
  Color color;

  Product(
      {this.id,
      this.image,
      this.title,
      this.description,
      this.price,
      this.color,
      this.size});
}

//Diors _Fall_2015_Bags.jpeg
List<Product> products = [
  Product(
    id: 1,
    image: 'assets/products/hairy_ladies.png',
    title: 'Fancy Love',
    description: '2021 classic',
    price: 26,
    size: 21,
    color: Color(0xFF27366D),
  ),
  Product(
    id: 2,
    image: 'assets/products/carptain_lady.png',
    title: 'brown orange',
    description: 'Shoes_Bags.jpeg',
    price: 30,
    size: 25,
    color: Color(0xFF20646D),
  ),
  Product(
    id: 3,
    image: 'assets/products/fancy_love.png',
    title: 'yellow lady',
    description: 'yellow bag with good quality',
    price: 50,
    size: 22,
    color: Color(0xFFA33A6D),
  ),
  Product(
    id: 4,
    image: 'assets/products/lady_carrot.png',
    title: 'leather vuit',
    description: 'Fancy hand bag',
    price: 50,
    size: 28,
    color: Color(0xFF0FCAB0),
  ),
  Product(
    id: 5,
    image: 'assets/products/lady_silver.png',
    title: 'bride leather shoulder',
    description: 'classic bags',
    price: 50,
    size: 31,
    color: Color(0xFF0F22B0),
  ),
  Product(
    id: 6,
    image: 'assets/products/golden_courier.png',
    title: 'museum bag',
    description: 'splendid hand bag',
    price: 50,
    size: 21,
    color: Color(0xFF0FCAB0),
  ),
  Product(
    id: 7,
    image: 'assets/products/bride_leather_shoulder.png',
    title: 'student bag',
    description: 'Fancy hand bag',
    price: 50,
    size: 22,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 8,
    image: 'assets/products/yellow_lady.png',
    title: 'Yellow lady',
    description: 'love able',
    price: 50,
    size: 26,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 9,
    image: 'assets/products/classic.png',
    title: 'kiss clip art red',
    description: 'california image',
    price: 50,
    size: 31,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 10,
    image: 'assets/products/doir_blue.png',
    title: 'kiss clip art red',
    description: 'california image',
    price: 50,
    size: 21,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 11,
    image: 'assets/products/hairy_ladies.png',
    title: 'kiss clip art red',
    description: 'california image',
    price: 50,
    size: 28,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 13,
    image: 'assets/products/nutch_red.png',
    title: 'kiss clip art red',
    description: 'california image',
    price: 50,
    size: 27,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 14,
    image: 'assets/products/peach_lovely.png',
    title: 'kiss clip art red',
    description: 'california image',
    price: 50,
    size: 21,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 15,
    image: 'assets/products/stony_lady.png',
    title: 'stony lady',
    description: 'california image',
    price: 50,
    size: 21,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 15,
    image: 'assets/products/stylish_green.png',
    title: 'stylish green',
    description: 'california image',
    price: 50,
    size: 21,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 16,
    image: 'assets/products/stylish.png',
    title: 'stylish',
    description: 'california image',
    price: 50,
    size: 21,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 17,
    image: 'assets/products/ladies_love.png',
    title: 'stony lady',
    description: 'california image',
    price: 50,
    size: 21,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 18,
    image: 'assets/products/golden_courier.png',
    title: 'stony lady',
    description: 'california image',
    price: 50,
    size: 21,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 19,
    image: 'assets/products/classic.png',
    title: 'classic',
    description: 'california image',
    price: 50,
    size: 21,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 20,
    image: 'assets/products/cyan_cool.png',
    title: 'cyan flag',
    description: 'california image',
    price: 50,
    size: 21,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 21,
    image: 'assets/products/bloom.png',
    title: 'Bloom',
    description: 'california image',
    price: 50,
    size: 21,
    color: Color(0xFF11A1B0),
  ),
  Product(
    id: 22,
    image: 'assets/products/modern.png',
    title: 'cyan flag',
    description: 'california image',
    price: 50,
    size: 20,
    color: Color(0xFF11A1B0),
  ),
];
