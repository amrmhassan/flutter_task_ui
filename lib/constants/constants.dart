import 'package:ui_task/models/category_model.dart';

class Constants {
  static const int orders = 0;
}

class CategoriesList {
  static List<CategoryModel> models = const [
    CategoryModel('Constructions', 'Constructions'),
    CategoryModel('Insurances', 'Insurances'),
    CategoryModel('Legal', 'Legal'),
    CategoryModel('Buy & Sell', 'buy_sell'),
    CategoryModel('Account Services', 'account_services'),
  ];
}
