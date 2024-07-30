import 'package:stacked/stacked.dart';

class NotificationSettingsViewModel extends BaseViewModel {
  bool bookingAcceptanceEmail = false;
  bool bookingAcceptanceSms = false;
  bool bookingAcceptancceInApp = false;

  bool promotionalNotificationsEmail = false;
  bool promotionalNotificationsSms = false;
  bool promotionalNotificationsInApp = false;

  bool updatesEmail = false;
  bool updatesSms = false;
  bool updatesInApp = false;

  void actionTurnOffAllBookingAcceptance() {
    bookingAcceptanceEmail = false;
    bookingAcceptanceSms = false;
    bookingAcceptancceInApp = false;
    rebuildUi();
  }

  void actionToggleBookingAcceptanceEmail(bool value) {
    bookingAcceptanceEmail = value;
    rebuildUi();
  }

  void actionToggleBookingAcceptanceSms(bool value) {
    bookingAcceptanceSms = value;
    rebuildUi();
  }

  void actionToggleBookingAcceptanceInApp(bool value) {
    bookingAcceptancceInApp = value;
    rebuildUi();
  }

  void actionTurnOffAllPromotionalNotifications() {
    promotionalNotificationsEmail = false;
    promotionalNotificationsSms = false;
    promotionalNotificationsInApp = false;
    rebuildUi();
  }

  void actionTogglePromotionalNotificationsEmail(bool value) {
    promotionalNotificationsEmail = value;
    rebuildUi();
  }

  void actionTogglePromotionalNotificationsSms(bool value) {
    promotionalNotificationsSms = value;
    rebuildUi();
  }

  void actionTogglePromotionalNotificationsInApp(bool value) {
    promotionalNotificationsInApp = value;
    rebuildUi();
  }

  void actionTurnOffAllUpdates() {
    updatesEmail = false;
    updatesSms = false;
    updatesInApp = false;
    rebuildUi();
  }

  void actionToggleUpdatesEmail(bool value) {
    updatesEmail = value;
    rebuildUi();
  }

  void actionToggleUpdatesSms(bool value) {
    updatesSms = value;
    rebuildUi();
  }

  void actionToggleUpdatesInApp(bool value) {
    updatesInApp = value;
    rebuildUi();
  }
}
