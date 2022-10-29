import 'package:flutter/material.dart';

class EcommerceController{
  int selectedIndex =0;
  var names = [
    'home',
    'My Cart',
    'Upcoming Orders',
    'Offer Zone',
    'My Account',
    'My Chats',
    'Help',
  ];
  var pages = [];
  var icons = [
    Icons.home,
    Icons.shopping_cart,
    Icons.all_inbox,
    Icons.card_giftcard,
    Icons.account_circle,
    Icons.chat,
    Icons.help,
  ];
  var contains=['All','Electronics and Appliances','Shirts','Cups','Alabourh','Couches'];
}