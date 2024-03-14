import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/common/failures/common_failure.dart';

abstract class ICommonRepository {
  Future<Either<CommonFailure, Unit>> openPhoneNumberInDialer({
    required String phoneNumber,
  });
  Future<Either<CommonFailure, Unit>> openLocationInMap({
    required String latitude,
    required String longitude,
  });
  Future<Either<CommonFailure, Unit>> shareLocation({
    required String latitude,
    required String longitude,
  });
  Future<Either<CommonFailure, Unit>> shareNetworkImage({
    required String url,
  });
}
