import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/common/failures/common_failure.dart';
import 'package:data_dex/domain/common/i_common_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

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
}
