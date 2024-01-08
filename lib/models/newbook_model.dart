class NewBookModel {
  String? image;

  NewBookModel(this.image);
}

List newbooks = newBookData.map((item) => NewBookModel(item["image"])).toList()!
    as List<NewBookModel>;

var newBookData = [
  {"image": "assets/images/img_newbook1.png"},
  {"image": "assets/images/img_newbook2.png"},
  {"image": "assets/images/img_popular_book1.png"},
];
