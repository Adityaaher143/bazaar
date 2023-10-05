import 'package:bazzar/constant/images.dart';
import 'package:bazzar/models/category_model.dart';
import 'package:bazzar/views/CartScreen/cart_screen.dart';
import 'package:bazzar/views/CategoryScreen/category_screen.dart';
import 'package:bazzar/views/HomeScreen/home.dart';
import 'package:bazzar/views/HomeScreen/homeScreen.dart';
import 'package:bazzar/views/MenuScreen/menu_screen.dart';

const screenlist = [HomeScreen(), CategoryScreen(), CartScreen(), MenuScreen()];
const bottomAppBarItemsIcon = [icHome, icDashboard, icBag, icMenu];


var CategoriesList = [
  CategoryModel(name: "Fruits and vegitable",imgUrl: igFood),
  CategoryModel(name: "Dairy",imgUrl: igDairy),
  CategoryModel(name: "Bevarages",imgUrl: igBeverage),
  CategoryModel(name: "Fruits and vegitable",imgUrl: igFood),
  CategoryModel(name: "Dairy",imgUrl: igDairy),
  CategoryModel(name: "Bevarages",imgUrl: igBeverage),
  CategoryModel(name: "Fruits and vegitable",imgUrl: igFood),
  CategoryModel(name: "Dairy",imgUrl: igDairy),
  CategoryModel(name: "Bevarages",imgUrl: igBeverage),
  CategoryModel(name: "Fruits and vegitable",imgUrl: igFood),
  CategoryModel(name: "Dairy",imgUrl: igDairy),
  CategoryModel(name: "Bevarages",imgUrl: igBeverage),
];