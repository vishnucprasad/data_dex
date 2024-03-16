// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data_dex/application/app_action/app_action_cubit.dart' as _i24;
import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart'
    as _i25;
import 'package:data_dex/application/auth/auth_bloc.dart' as _i26;
import 'package:data_dex/application/auth/signin/signin_bloc.dart' as _i23;
import 'package:data_dex/application/co_applicant_form/co_applicant_form_bloc.dart'
    as _i27;
import 'package:data_dex/application/guarenter_form/guarenter_form_bloc.dart'
    as _i28;
import 'package:data_dex/application/loan/loan_actor/loan_actor_bloc.dart'
    as _i19;
import 'package:data_dex/application/loan/loan_watcher/loan_watcher_bloc.dart'
    as _i21;
import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart'
    as _i20;
import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart'
    as _i22;
import 'package:data_dex/domain/applicant/i_applicant_repository.dart' as _i3;
import 'package:data_dex/domain/auth/i_auth_facade.dart' as _i5;
import 'package:data_dex/domain/co_applicant/i_co_applicant_repository.dart'
    as _i7;
import 'package:data_dex/domain/common/i_common_repository.dart' as _i9;
import 'package:data_dex/domain/guarenter/i_guarenter_repository.dart' as _i11;
import 'package:data_dex/domain/loan/i_loan_repository.dart' as _i15;
import 'package:data_dex/domain/loan_particulars/i_loan_particulars_repository.dart'
    as _i13;
import 'package:data_dex/domain/miscellaneous_details/i_miscellaneous_details_repository.dart'
    as _i17;
import 'package:data_dex/infrastructure/applicant/applicant_repository.dart'
    as _i4;
import 'package:data_dex/infrastructure/auth/firebase_auth_facade.dart' as _i6;
import 'package:data_dex/infrastructure/co_applicant/co_applicant_repository.dart'
    as _i8;
import 'package:data_dex/infrastructure/common/common_repository.dart' as _i10;
import 'package:data_dex/infrastructure/guarenter/guarenter_repository.dart'
    as _i12;
import 'package:data_dex/infrastructure/loan/loan_repository.dart' as _i16;
import 'package:data_dex/infrastructure/loan_particulars/loan_particulars_repository.dart'
    as _i14;
import 'package:data_dex/infrastructure/miscellaneous_details/miscellaneous_details_repository.dart'
    as _i18;
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
    gh.lazySingleton<_i7.ICoApplicantRepository>(
        () => _i8.CoApplicantRepository());
    gh.lazySingleton<_i9.ICommonRepository>(() => _i10.CommonRepository());
    gh.lazySingleton<_i11.IGuarenterRepository>(
        () => _i12.GuarenterRepository());
    gh.lazySingleton<_i13.ILoanParticularsRepository>(
        () => _i14.LoanParticularsRepository());
    gh.lazySingleton<_i15.ILoanRepository>(() => _i16.LoanRepository());
    gh.lazySingleton<_i17.IMiscellaneousDetailsRepository>(
        () => _i18.MiscellaneousDetailsRepository());
    gh.factory<_i19.LoanActorBloc>(
        () => _i19.LoanActorBloc(gh<_i15.ILoanRepository>()));
    gh.factory<_i20.LoanParticularsFormBloc>(() =>
        _i20.LoanParticularsFormBloc(gh<_i13.ILoanParticularsRepository>()));
    gh.factory<_i21.LoanWatcherBloc>(
        () => _i21.LoanWatcherBloc(gh<_i15.ILoanRepository>()));
    gh.factory<_i22.MiscellaneousDetailsFormBloc>(() =>
        _i22.MiscellaneousDetailsFormBloc(
            gh<_i17.IMiscellaneousDetailsRepository>()));
    gh.factory<_i23.SigninBloc>(() => _i23.SigninBloc(gh<_i5.IAuthFacade>()));
    gh.factory<_i24.AppActionCubit>(
        () => _i24.AppActionCubit(gh<_i9.ICommonRepository>()));
    gh.factory<_i25.ApplicantFormBloc>(() => _i25.ApplicantFormBloc(
          gh<_i3.IApplicantRepository>(),
          gh<_i15.ILoanRepository>(),
        ));
    gh.factory<_i26.AuthBloc>(() => _i26.AuthBloc(gh<_i5.IAuthFacade>()));
    gh.factory<_i27.CoApplicantFormBloc>(
        () => _i27.CoApplicantFormBloc(gh<_i7.ICoApplicantRepository>()));
    gh.factory<_i28.GuarenterFormBloc>(
        () => _i28.GuarenterFormBloc(gh<_i11.IGuarenterRepository>()));
    return this;
  }
}
