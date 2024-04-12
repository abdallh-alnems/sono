import 'base_widget.dart';

double? textMobile;
double? textTablet;
double? textWeb ;

double getSizeText(textMobile, textTablet, textWeb) {
return  BaseWidget.isMobile()
      ? textMobile
      : BaseWidget.isTablet()
          ? textTablet
          : textWeb;
}
