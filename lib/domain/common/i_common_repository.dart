import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/common/failures/common_failure.dart';

abstract class ICommonRepository {
  Future<Either<CommonFailure, Unit>> openPhoneNumberInDialer({
    required String phoneNumber,
  });
}
