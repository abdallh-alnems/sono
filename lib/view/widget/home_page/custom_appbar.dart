import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sono/core/constant/color.dart';
import 'package:sono/core/constant/image_asset.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outline,
                        color: AppColor.primaryColor,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none,
                        color: AppColor.primaryColor,
                      )),
                ],
              ),
              Text('Sono')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              Expanded(
                  child: TextFormField(
                // controller: mycontroller,
                // onChanged: onChanged,
                decoration: InputDecoration(
                    hintText: '10'.tr,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: AppColor.primaryColor,
                          ),
                          onPressed: () {}),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(40)),
                    filled: true,
                    fillColor: AppColor.backGroundIcon),
              )),
              SizedBox(
                width: 18,
              ),
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColor.backGroundIcon,
                ),
                child: Image.asset(
                  AppImageAsset.home,
                  scale: 1.3,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
