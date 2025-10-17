import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:login_tracker/helper/style.dart';
import 'package:login_tracker/helper/theme_notifier.dart';
import 'app_color.dart';

BackArrowButton(){
  return IconButton(
    onPressed: () {
      Get.back();
    },
    icon: Icon(
      Icons.arrow_back,
      color: primaryWhite,
      size: 20,
    ),
  );
}

showLogoutBottomSheet({required BuildContext context, required Function() onTap}) {
  return showModalBottomSheet(
    context: context,
    isDismissible: false,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    backgroundColor: Colors.white,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: SIZEDBOX_8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PADDING_16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Logout'.tr,
                  style: TextStyle(
                    color: ThemeNotifier().colors().mainHeadingColor,
                    fontWeight: FontWeight.bold,fontSize: SUB_HEADING_SIZE_16
                  ),
                ),
                InkWell(
                  onTap: () => Get.back(),
                  child: Icon(Icons.clear, color: ThemeNotifier().colors().mainHeadingColor,),
                )
              ],
            ),
          ),
          const SizedBox(height: SIZEDBOX_8,),
          Divider(
            color: ThemeNotifier().colors().subHeadingColor,
          ),
          const SizedBox(height: SIZEDBOX_8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PADDING_16),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Want to logout?'.tr,
                        style: TextStyle(
                          color: ThemeNotifier().colors().mainHeadingColor,
                          fontWeight: FontWeight.bold,
                          fontSize: SUB_HEADING_SIZE_16
                        ),
                      ),
                      const SizedBox(height: SIZEDBOX_4,),
                      Text(
                        'Logging out now. Your data stays safe log in anytime later.'.tr,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: ThemeNotifier().colors().mainHeadingColor,
                          fontSize: SUB_HEADING_SIZE_14
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: SIZEDBOX_8,),
                Expanded(
                  child: Image.asset(
                    'assets/logout.png',
                    height: IMAGE_HEIGHT_80,
                    width: IMAGE_HEIGHT_80,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: SIZEDBOX_8,),
          Divider(
            color: ThemeNotifier().colors().subHeadingColor,
          ),
          const SizedBox(height: SIZEDBOX_8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PADDING_16),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(primaryWhite),
                      elevation: const WidgetStatePropertyAll(0),
                      side: WidgetStatePropertyAll(
                          BorderSide(
                            color: ThemeNotifier().colors().subHeadingColor
                          )
                      )
                    ),
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      'Cancel'.tr,
                      style: TextStyle(
                        color: buttonColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ),
                const SizedBox(width: SIZEDBOX_8,),
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(buttonColor),
                      elevation: const WidgetStatePropertyAll(0)
                    ),
                    onPressed: onTap,
                    child: Text(
                      'Logout'.tr,
                      style: TextStyle(
                        color: primaryWhite,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ),
              ],
            ),
          ),
          const SizedBox(height: SIZEDBOX_8,),
        ],
      );
    },
  );
}

Widget noDataFoundWidget({text}){
  return LayoutBuilder(
    builder: (context, height) {
      return SingleChildScrollView(physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
            constraints: BoxConstraints(minHeight: height.maxHeight),
            child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: ThemeNotifier().colors().mainHeadingColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
            )
        ),
      );
    },
  );
}

errorSnackBar({message}){
  Get.snackbar(
      'Error',
      message,
      titleText: Text(
        'Error'.tr,
        style: TextStyle(
          fontSize: SUB_HEADING_SIZE_16,
          color: primaryWhite,
          fontWeight: FontWeight.bold
        ),
      ),
      messageText: Text(
        message,
        style: TextStyle(
          fontSize: SUB_HEADING_SIZE_14,
          fontWeight: FontWeight.w500,
          color: primaryWhite
        ),
      ),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: primaryRed,
      padding: const EdgeInsets.all(PADDING_8)
  );
}

successSnackBar({message}){
  Get.snackbar(
      'Success',
      message,
      titleText: Text(
        'Success'.tr,
        style: TextStyle(
          fontSize: SUB_HEADING_SIZE_16,
          color: primaryWhite,
          fontWeight: FontWeight.bold
        ),
      ),
      messageText: Text(
        message,
        style: TextStyle(
          fontSize: SUB_HEADING_SIZE_14,
          fontWeight: FontWeight.w500,
          color: primaryWhite
        ),
      ),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      padding: const EdgeInsets.all(PADDING_8)
  );
}

showRetryDialog({void Function()? onPressed}) async {
  return await Get.defaultDialog(
      title: 'Authentication Required'.tr,
      titleStyle: TextStyle(
          fontSize: MAIN_HEADING_SIZE_18,
          fontWeight: FontWeight.bold,
          color: ThemeNotifier().colors().mainHeadingColor
      ),
      barrierDismissible: false,
      backgroundColor: primaryWhite,
      titlePadding: const EdgeInsets.all(PADDING_8),
      content: Column(
        children: [
          Icon(
            Icons.fingerprint_outlined,
            color: themeColor,
            size: ICON_BUTTON_SIZE_32,
          ),
          const SizedBox(height: SIZEDBOX_8,),
          Text(
            'Biometric authentication is required to continue.'.tr,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: SUB_HEADING_SIZE_16,
                fontWeight: FontWeight.w500,
                color: ThemeNotifier().colors().mainHeadingColor
            ),
          )
        ],
      ),
      confirm: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: themeColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(BORDER_RADIUS_8),
            )
        ),
        onPressed: onPressed,
        child: Text(
          'Continue'.tr,
          style: TextStyle(
              fontSize: SUB_HEADING_SIZE_16,
              fontWeight: FontWeight.bold,
              color: primaryWhite
          ),
        ),
      ),
      cancel: TextButton(
        onPressed: () {
          Get.back(result: true);
        },
        child: Text(
          'Cancel'.tr,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SUB_HEADING_SIZE_14,
              color: ThemeNotifier().colors().subHeadingColor
          ),
        ),
      )
  );
}

String formatTime(String? dateStr, {bool is24Hour = false}) {
  if(dateStr != null && dateStr != ''){
    try {
      final DateTime dateTime = DateTime.parse(dateStr);
      return is24Hour
          ? DateFormat('HH:mm').format(dateTime) // 24-hour
          : DateFormat('hh:mm a').format(dateTime); // 12-hour with AM/PM
    } catch (e) {
      // If parsing fails, return original string
      return dateStr;
    }
  } else {
    return '-';
  }
}
