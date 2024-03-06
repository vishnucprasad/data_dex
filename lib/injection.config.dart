// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data_dex/application/app_action/app_action_cubit.dart' as _i3;
import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart'
    as _i11;
import 'package:data_dex/application/auth/auth_bloc.dart' as _i12;
import 'package:data_dex/application/auth/signin/signin_bloc.dart' as _i10;
import 'package:data_dex/domain/applicant/i_applicant_repository.dart' as _i4;
import 'package:data_dex/domain/auth/i_auth_facade.dart' as _i6;
import 'package:data_dex/domain/loan/i_loan_repository.dart' as _i8;
import 'package:data_dex/infrastructure/applicant/applicant_repository.dart'
    as _i5;
import 'package:data_dex/infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'package:data_dex/infrastructure/loan/loan_repository.dart' as _i9;
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
    gh.factory<_i3.AppActionCubit>(() => _i3.AppActionCubit());
    gh.lazySingleton<_i4.IApplicantRepository>(() => _i5.ApplicantRepository());
    gh.lazySingleton<_i6.IAuthFacade>(() => _i7.FirebaseAuthFacade());
    gh.lazySingleton<_i8.ILoanRepository>(() => _i9.LoanRepository());
    gh.factory<_i10.SigninBloc>(() => _i10.SigninBloc(gh<_i6.IAuthFacade>()));
    gh.factory<_i11.ApplicantFormBloc>(() => _i11.ApplicantFormBloc(
          gh<_i4.IApplicantRepository>(),
          gh<_i8.ILoanRepository>(),
        ));
    gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(gh<_i6.IAuthFacade>()));
    return this;
  }
}
