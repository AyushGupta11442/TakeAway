import 'package:TakeAway/screens/bottom_navi_bar/cart.dart';
import 'package:TakeAway/screens/bottom_navi_bar/placedorder.dart';
import 'package:TakeAway/screens/bottom_navi_bar/homescreen.dart';
import 'package:TakeAway/screens/bottom_navi_bar/profile/profile.dart';
import 'package:TakeAway/screens/bottom_navi_bar/wishlist.dart';
import 'package:TakeAway/screens/cloathing/menscloathing.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

Map menshirt = {
  'object.1': {
    'name': 'Louis Philippe Sport',
    'price': 799,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/2313192/pexels-photo-2313192.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.2': {
    'name': 'HRX by Hrithik Roshan',
    'price': 802,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/9886881/pexels-photo-9886881.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.3': {
    'name': 'Huetrap',
    'price': 740,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/9604182/pexels-photo-9604182.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.4': {
    'name': 'Huetrap',
    'price': 800,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/9604182/pexels-photo-9604182.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.5': {
    'name': 'Huetrap',
    'price': 700,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/10397680/pexels-photo-10397680.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
};
Map womenmenshirt = {
  'object.1': {
    'name': 'SHAYE',
    'price': 799,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/9725690/pexels-photo-9725690.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.2': {
    'name': 'SASSAFRAS',
    'price': 802,
    'discription':
        '1100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/7525042/pexels-photo-7525042.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.3': {
    'name': 'Huetrap',
    'price': 439,
    'discription':
        '1100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/9604182/pexels-photo-9604182.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.4': {
    'name': 'DEEBACO',
    'price': 775,
    'discription':
        '1100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/10669296/pexels-photo-10669296.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.5': {
    'name': 'Huetrap',
    'price': 439,
    'discription':
        '1100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/3765976/pexels-photo-3765976.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
};

Map menjeans = {
  'object.1': {
    'name': 'Allen Solly Sport',
    'price': 1799,
    'discription':
        '1100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/1879874/pexels-photo-1879874.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.2': {
    'name': 'Men Blue Skinny Fit ',
    'price': 1802,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/7525042/pexels-photo-7525042.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.3': {
    'name': 'Levis :Men Blue ',
    'price': 1439,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/9604182/pexels-photo-9604182.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.4': {
    'name': 'DEEBACO',
    'price': 1775,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/10669296/pexels-photo-10669296.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.5': {
    'name': 'HIGHLANDER:Men Blue',
    'price': 1439,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/3765976/pexels-photo-3765976.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
};

Map womenjeans = {
  'object.1': {
    'name': 'Roadster:Women Blue',
    'price': 799,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/2363825/pexels-photo-2363825.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.2': {
    'name': 'SASSAFRAS:Blues',
    'price': 899,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/3066531/pexels-photo-3066531.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.3': {
    'name': 'H&M:Women White',
    'price': 4452,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/1578854/pexels-photo-1578854.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.4': {
    'name': 'SASSAFRAS',
    'price': 1775,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/4505454/pexels-photo-4505454.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.5': {
    'name': 'HERE&NOW',
    'price': 2000,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/396352/pexels-photo-396352.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
};

Map mensshoes = {
  'object.1': {
    'name': 'Roadster:White',
    'price': 799,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/2969315/pexels-photo-2969315.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.2': {
    'name': 'Roadster:Men black',
    'price': 899,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.3': {
    'name': 'Mactree',
    'price': 700,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/1578854/pexels-photo-1578854.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.4': {
    'name': 'Red Tape',
    'price': 1775,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/267320/pexels-photo-267320.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.5': {
    'name': 'Red Tape:men White',
    'price': 2000,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/1027130/pexels-photo-1027130.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
};

Map womenshoes = {
  'object.1': {
    'name': 'AfroJack:Women Sneakers',
    'price': 799,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/2969315/pexels-photo-2969315.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.2': {
    'name': 'Nike:Running Shoes',
    'price': 899,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/8788622/pexels-photo-8788622.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.3': {
    'name': 'Red Tape:Women White Sneakers',
    'price': 700,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/1972115/pexels-photo-1972115.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.4': {
    'name': 'Red Tape:Women White Sneakers',
    'price': 1775,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/7396650/pexels-photo-7396650.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.5': {
    'name': 'Red Tape:Women White Sports Shoes',
    'price': 2000,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/4753986/pexels-photo-4753986.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
};

Map menaccessories = {
  'object.1': {
    'name': 'WROGN:Analogue WR',
    'price': 896,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/125779/pexels-photo-125779.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.2': {
    'name': 'boAt:Blue Airdopes 131 ',
    'price': 899,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/3825517/pexels-photo-3825517.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.3': {
    'name': 'Apple Watch Series 7 ',
    'price': 4700,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/437037/pexels-photo-437037.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
};
Map womenaccessories = {
  'object.1': {
    'name': 'WROGN:Analogue Watch ',
    'price': 896,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/125779/pexels-photo-125779.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.2': {
    'name': 'boAt:Unisex Navy Blue Airdopes 131 ',
    'price': 899,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/437037/pexels-photo-437037.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
  'object.3': {
    'name': 'Apple Watch Series 7 ',
    'price': 4200,
    'discription':
        '100% Original Products \n Pay on delivery might be available \nEasy 30 days returns and exchanges \n Try & Buy might be available',
    'imagelink':
        'https://images.pexels.com/photos/437037/pexels-photo-437037.jpeg?auto=compress&cs=tinysrgb&w=1600'
  },
};

Map<dynamic, List> wishlistmap = {};
// to add value in wislistmap
void addValueTowishlisttMap<K, V>(Map<K, List<V>> map, K key, V value) =>
    map.update(key, (list) => list..add(value), ifAbsent: () => [value]);
//
Map<dynamic, List> cartmap = {};
// to add value in cartmap
void addValueTocartMap<K, V>(Map<K, List<V>> map, K key, V value) =>
    map.update(key, (list) => list..add(value), ifAbsent: () => [value]);
int num = 1;
List<int> number = [];
Map<dynamic, List> buyed = {};
int index = 2;
final screens = [
  profile(),
  placedorder(),
  HomeScreen(),
  Cart(),
  wishlist(),
  MensCloathing(),
];
final items = [
  Icon(
    Icons.account_box,
    size: 30,
  ),
  Icon(
    Icons.list,
    size: 30,
  ),
  Icon(
    Icons.home,
    size: 30,
  ),
  Icon(
    Icons.shopping_cart,
    size: 30,
  ),
  Icon(
    Icons.favorite,
    size: 30,
  )
];

final navigationkey = GlobalKey<CurvedNavigationBarState>();

dynamic greencolor = Color.fromARGB(255, 29, 126, 133);
dynamic bluecolor = Color.fromARGB(255, 18, 98, 168);
dynamic redcolor = Color.fromARGB(255, 212, 61, 101);
dynamic backgroundcolor = Color.fromARGB(255, 255, 250, 245);
