import 'package:ecommerceapp/models/product.dart';

final List<Product> allProducts = [
  Product(
    id: 1,
    aName: "Kennedy Barrel Chair",
    price: "789.99",
    description:
        "This oversized chair is perfect for those looking to spend hours sprawled out reading their favorite book or for those who just want to cuddle with the one they love. The barrel chair's handpicked fabric has a special sheen that creates a look of total elegance.",
    moreInfo:
        'Toss Pillows included\nTop seat top: 1"\nBetween arms: 55"\nArm width: 4"\nWeight Capacity: 500 lb\nProduct care: Spot clean with a damp cloth and water\nFrame Material: Solid Wood',
    images: [
      'assets/images/KennedyBarrelChair-1.jpg',
      'assets/images/KennedyBarrelChair-2.jpg',
      'assets/images/KennedyBarrelChair-3.jpg',
      'assets/images/KennedyBarrelChair-4.jpg',
    ],
  ),
  Product(
    id: 2,
    aName: 'Sofa',
    description: 'Best sofa ever',
    moreInfo: 'Color: Brown',
    price: '799',
    images: ['assets/images/Sofa.jpg'],
  ),
  Product(
    id: 3,
    aName: 'Couch',
    description: 'Comfy comfy',
    moreInfo: 'Color: Pink',
    price: '989.99',
    images: ['assets/images/PinkCouch.jpg'],
  ),
  Product(
    id: 4,
    aName: 'Dinner table',
    description: 'Best for family',
    moreInfo: 'Color: Black',
    price: '759.99',
    images: ['assets/images/DinnerTable.jpg'],
  ),
  Product(
    id: 5,
    aName: 'Bed',
    description: 'This bed got your back for romantic nights ;)',
    moreInfo: 'Color: Black',
    price: '574.99',
    images: ['assets/images/BlackBed.jpg'],
  ),
];
