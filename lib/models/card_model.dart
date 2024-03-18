class CardModel {
  final String name;
  final String img;

  CardModel({required this.name, required this.img});
}

List<CardModel> cardsList = [
  CardModel(name: 'Macchiato', img: 'assets/images/americano.jpg'),
  CardModel(name: 'Cappuccino', img: 'assets/images/three.jpg'),
  CardModel(name: 'Doppio', img: 'assets/images/Doppio.jpg'),
  CardModel(name: 'Irish', img: 'assets/images/Irish.jpg'),
  CardModel(name: 'Americano', img: 'assets/images/americano.jpg'),
];
