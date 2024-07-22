import 'package:package_info_plus/package_info_plus.dart';
import 'package:stacked_mobile_starter/app/app.logger.dart';

class AppMetaDataService {
  final _logger = getLogger('AppMetadataService');

  Future<String?> fetchInfo() async {
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      return packageInfo.version;
    } catch (e) {
      _logger.e('error while trying to get version number', e);
      return null;
    }
  }
}
