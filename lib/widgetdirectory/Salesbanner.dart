import 'package:flutter/material.dart';

sales(context) {
  return (SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        InkWell(
          child: Container(
            padding: EdgeInsets.all(50),
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://img.freepik.com/free-vector/realistic-akshaya-tritiya-sale-banner-template_52683-83400.jpg?w=900&t=st=1662324615~exp=1662325215~hmac=b94ad155f57e1e9750ec60fc5ce5b534542417cf615b954331e770f3324b4369',
                  )),
            ),
          ),
          onTap: (() {
            Navigator.pushNamed(context, '/commingsoon');
          }),
        ),
        SizedBox(width: 20),
        InkWell(
          child: Container(
            padding: EdgeInsets.all(50),
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://img.freepik.com/free-psd/new-collection-fashion-sale-web-banner-template_120329-1507.jpg?w=740&t=st=1662324668~exp=1662325268~hmac=a534d3d5c2f5ff94df9c9b218308cbfac8911b1141ae4893b3bd409553716df5',
                  )),
            ),
          ),
          onTap: (() {
            Navigator.pushNamed(context, '/commingsoon');
          }),
        ),
        SizedBox(width: 20),
        InkWell(
          child: Container(
            padding: EdgeInsets.all(50),
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://i.pinimg.com/564x/37/d7/65/37d765e3e3579feea84bc96ee0a0e857.jpg',
                  )),
            ),
          ),
          onTap: (() {
            Navigator.pushNamed(context, '/commingsoon');
          }),
        ),
        SizedBox(width: 20),
        InkWell(
          child: Container(
            padding: EdgeInsets.all(50),
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://thumbs.dreamstime.com/z/sale-banners-women-clothing-accessories-background-big-banner-low-price-summer-discount-shopping-center-store-dress-155683808.jpg',
                  )),
            ),
          ),
          onTap: (() {
            Navigator.pushNamed(context, '/commingsoon');
          }),
        ),
        SizedBox(width: 20),
      ],
    ),
  ));
}
