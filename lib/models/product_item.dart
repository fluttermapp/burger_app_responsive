class ProductItem {
  final String image, title;
  final int amount, uid;
  ProductItem({
    this.uid,
    this.image,
    this.title,
    this.amount,
  });
}

List<ProductItem> products = [
  ProductItem(
    uid: 1,
    title: "Buzz Trio",
    amount: 8,
    image: "images/burger1.png",
  ),
  ProductItem(
    uid: 2,
    title: "Double Buzz",
    amount: 10,
    image: "images/burger2.png",
  ),
  ProductItem(
    uid: 3,
    title: "Chicken Bacon",
    amount: 12,
    image: "images/burger3.png",
  ),
  ProductItem(
    uid: 4,
    title: "Buzz Burger",
    amount: 16,
    image: "images/burger4.png",
  ),
  ProductItem(
    uid: 5,
    title: "Chicken burger",
    amount: 8,
    image: "images/burger5.png",
  ),
  ProductItem(
    uid: 6,
    title: "Spicy Buzz",
    amount: 9,
    image: "images/burger6.png",
  ),
  ProductItem(
    uid: 7,
    title: "Burger Trio",
    amount: 15,
    image: "images/burger7.png",
  ),
  ProductItem(
    uid: 8,
    title: "Bigger Buzz",
    amount: 18,
    image: "images/burger0.png",
  ),
];
