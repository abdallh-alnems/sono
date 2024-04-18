import 'base_widget.dart';

double getSizeText(double textMobile, double textTablet, double textWeb) {
  return BaseWidget.isMobile()
      ? textMobile
      : BaseWidget.isTablet()
          ? textTablet
          : textWeb;
}
