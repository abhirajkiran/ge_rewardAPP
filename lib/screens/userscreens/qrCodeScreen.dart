import 'package:flutter/material.dart';
import 'package:ge_2/core/colors.dart';
import 'package:qr_flutter/qr_flutter.dart';

class qrCodeScreen extends StatelessWidget {
  final String descriptionSub;
  final String giftId;
  final bool status;
  const qrCodeScreen({super.key, required this.descriptionSub, required this.giftId, required this.status});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         backgroundColor: Colors.grey.withOpacity(.2),
         body: Padding(
           padding:  EdgeInsets.all(12),
           child: Column(
               children: [
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Claim Your Gits ' +descriptionSub,style: TextStyle(
                                  fontSize: 25,
                                  color:primaryColor,
                                  fontWeight: FontWeight.w600
                                  // Colors.grey.withOpacity(.7),
                                ),),
                ),
                              SizedBox(height: 40,),
                  QrImageView(data: giftId+descriptionSub,size: 300,backgroundColor: Colors.white,)
               ],
           ),
         ),
      
      ),
    );
  }
}