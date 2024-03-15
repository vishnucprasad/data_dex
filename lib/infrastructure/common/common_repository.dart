import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' show get, Response;
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:data_dex/domain/common/failures/common_failure.dart';
import 'package:data_dex/domain/common/i_common_repository.dart';

@LazySingleton(as: ICommonRepository)
class CommonRepository implements ICommonRepository {
  @override
  Future<Either<CommonFailure, Unit>> openPhoneNumberInDialer({
    required String phoneNumber,
  }) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      return right(unit);
    } else {
      return left(const CommonFailure.clientFailure(
        'Could not open phone number in dialer',
      ));
    }
  }

  @override
  Future<Either<CommonFailure, Unit>> openLocationInMap({
    required String latitude,
    required String longitude,
  }) async {
    final url =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      return right(unit);
    } else {
      return left(CommonFailure.locationFailure('Could not launch $url'));
    }
  }

  @override
  Future<Either<CommonFailure, Unit>> shareLocation({
    required String latitude,
    required String longitude,
  }) async {
    try {
      await Share.share(
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude',
      );

      return right(unit);
    } catch (_) {
      return left(const CommonFailure.shareFailure('Could not share location'));
    }
  }

  @override
  Future<Either<CommonFailure, Unit>> shareNetworkImage({
    required String url,
  }) async {
    try {
      final uri = Uri.parse(url);

      final Response response = await get(uri);
      final directory = await getTemporaryDirectory();
      File file = await File('${directory.path}/Image.png')
          .writeAsBytes(response.bodyBytes);
      await Share.shareXFiles([XFile(file.path)], text: 'Share');
      directory.delete(recursive: true);

      return right(unit);
    } catch (_) {
      return left(const CommonFailure.shareFailure('Could not share image'));
    }
  }
}
