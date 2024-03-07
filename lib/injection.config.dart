// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data_dex/application/app_action/app_action_cubit.dart' as _i13;
import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart'
    as _i14;
import 'package:data_dex/application/auth/auth_bloc.dart' as _i15;
import 'package:data_dex/application/auth/signin/signin_bloc.dart' as _i12;
import 'package:data_dex/application/loan/loan_watcher/loan_watcher_bloc.dart'
    as _i11;
import 'package:data_dex/domain/applicant/i_applicant_repository.dart' as _i3;
import 'package:data_dex/domain/auth/i_auth_facade.dart' as _i5;
import 'package:data_dex/domain/common/i_common_repository.dart' as _i7;
import 'package:data_dex/domain/loan/i_loan_repository.dart' as _i9;
import 'package:data_dex/infrastructure/applicant/applicant_repository.dart'
    as _i4;
import 'package:data_dex/infrastructure/auth/firebase_auth_facade.dart' as _i6;
import 'package:data_dex/infrastructure/common/common_repository.dart' as _i8;
import 'package:data_dex/infrastructure/loan/loan_repository.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IApplicantRepository>(() => _i4.ApplicantRepository());
    gh.lazySingleton<_i5.IAuthFacade>(() => _i6.FirebaseAuthFacade());
    gh.lazySingleton<_i7.ICommonRepository>(() => _i8.CommonRepository());
    gh.lazySingleton<_i9.ILoanRepository>(() => _i10.LoanRepository());
    gh.factory<_i11.LoanWatcherBloc>(
        () => _i11.LoanWatcherBloc(gh<_i9.ILoanRepository>()));
    gh.factory<_i12.SigninBloc>(() => _i12.SigninBloc(gh<_i5.IAuthFacade>()));
    gh.factory<_i13.AppActionCubit>(
        () => _i13.AppActionCubit(gh<_i7.ICommonRepository>()));
    gh.factory<_i14.ApplicantFormBloc>(() => _i14.ApplicantFormBloc(
          gh<_i3.IApplicantRepository>(),
          gh<_i9.ILoanRepository>(),
        ));
    gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(gh<_i5.IAuthFacade>()));
    return this;
  }
}
