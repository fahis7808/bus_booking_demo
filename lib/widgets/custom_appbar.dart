import 'package:flutter/material.dart';

import '../utils.dart';

class CustAppBar extends StatelessWidget {
  final String? title;
  final String? image;
  const CustAppBar({Key? key, this.title, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.only(bottom: 5),
      height: 110,
      decoration: const BoxDecoration (
        color: Color(0xff2a2a2a),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_outlined,color: Colors.white)),
          const Expanded(child: SizedBox()),
          Padding(
            padding:  const EdgeInsets.fromLTRB(0,10,45,15),
            child:
            image != null ?
                Image.asset(image ?? "",width: 126.24,
                  height: 41.72,):
            Text(
              // adddriverde8 (3:733)
              title ?? "",
              textAlign: TextAlign.center,
              style: safeGoogleFont (
                'Axiforma',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                height: 1,
                color: const Color(0xffffffff),
              ),
            ),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
