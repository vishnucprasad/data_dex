// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Loan {
  UniqueId get id => throw _privateConstructorUsedError;
  int get loanStatusIndex => throw _privateConstructorUsedError;
  Applicant get applicant => throw _privateConstructorUsedError;
  CoApplicant? get coApplicant => throw _privateConstructorUsedError;
  Guarenter? get guarenter => throw _privateConstructorUsedError;
  LoanParticulars? get loanParticulars => throw _privateConstructorUsedError;
  MiscellaneousDetails? get miscellaneousDetails =>
      throw _privateConstructorUsedError;
  String? get disbursementDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoanCopyWith<Loan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanCopyWith<$Res> {
  factory $LoanCopyWith(Loan value, $Res Function(Loan) then) =
      _$LoanCopyWithImpl<$Res, Loan>;
  @useResult
  $Res call(
      {UniqueId id,
      int loanStatusIndex,
      Applicant applicant,
      CoApplicant? coApplicant,
      Guarenter? guarenter,
      LoanParticulars? loanParticulars,
      MiscellaneousDetails? miscellaneousDetails,
      String? disbursementDate});

  $ApplicantCopyWith<$Res> get applicant;
  $CoApplicantCopyWith<$Res>? get coApplicant;
  $GuarenterCopyWith<$Res>? get guarenter;
  $LoanParticularsCopyWith<$Res>? get loanParticulars;
  $MiscellaneousDetailsCopyWith<$Res>? get miscellaneousDetails;
}

/// @nodoc
class _$LoanCopyWithImpl<$Res, $Val extends Loan>
    implements $LoanCopyWith<$Res> {
  _$LoanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? loanStatusIndex = null,
    Object? applicant = null,
    Object? coApplicant = freezed,
    Object? guarenter = freezed,
    Object? loanParticulars = freezed,
    Object? miscellaneousDetails = freezed,
    Object? disbursementDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      loanStatusIndex: null == loanStatusIndex
          ? _value.loanStatusIndex
          : loanStatusIndex // ignore: cast_nullable_to_non_nullable
              as int,
      applicant: null == applicant
          ? _value.applicant
          : applicant // ignore: cast_nullable_to_non_nullable
              as Applicant,
      coApplicant: freezed == coApplicant
          ? _value.coApplicant
          : coApplicant // ignore: cast_nullable_to_non_nullable
              as CoApplicant?,
      guarenter: freezed == guarenter
          ? _value.guarenter
          : guarenter // ignore: cast_nullable_to_non_nullable
              as Guarenter?,
      loanParticulars: freezed == loanParticulars
          ? _value.loanParticulars
          : loanParticulars // ignore: cast_nullable_to_non_nullable
              as LoanParticulars?,
      miscellaneousDetails: freezed == miscellaneousDetails
          ? _value.miscellaneousDetails
          : miscellaneousDetails // ignore: cast_nullable_to_non_nullable
              as MiscellaneousDetails?,
      disbursementDate: freezed == disbursementDate
          ? _value.disbursementDate
          : disbursementDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApplicantCopyWith<$Res> get applicant {
    return $ApplicantCopyWith<$Res>(_value.applicant, (value) {
      return _then(_value.copyWith(applicant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoApplicantCopyWith<$Res>? get coApplicant {
    if (_value.coApplicant == null) {
      return null;
    }

    return $CoApplicantCopyWith<$Res>(_value.coApplicant!, (value) {
      return _then(_value.copyWith(coApplicant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GuarenterCopyWith<$Res>? get guarenter {
    if (_value.guarenter == null) {
      return null;
    }

    return $GuarenterCopyWith<$Res>(_value.guarenter!, (value) {
      return _then(_value.copyWith(guarenter: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoanParticularsCopyWith<$Res>? get loanParticulars {
    if (_value.loanParticulars == null) {
      return null;
    }

    return $LoanParticularsCopyWith<$Res>(_value.loanParticulars!, (value) {
      return _then(_value.copyWith(loanParticulars: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MiscellaneousDetailsCopyWith<$Res>? get miscellaneousDetails {
    if (_value.miscellaneousDetails == null) {
      return null;
    }

    return $MiscellaneousDetailsCopyWith<$Res>(_value.miscellaneousDetails!,
        (value) {
      return _then(_value.copyWith(miscellaneousDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoanImplCopyWith<$Res> implements $LoanCopyWith<$Res> {
  factory _$$LoanImplCopyWith(
          _$LoanImpl value, $Res Function(_$LoanImpl) then) =
      __$$LoanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      int loanStatusIndex,
      Applicant applicant,
      CoApplicant? coApplicant,
      Guarenter? guarenter,
      LoanParticulars? loanParticulars,
      MiscellaneousDetails? miscellaneousDetails,
      String? disbursementDate});

  @override
  $ApplicantCopyWith<$Res> get applicant;
  @override
  $CoApplicantCopyWith<$Res>? get coApplicant;
  @override
  $GuarenterCopyWith<$Res>? get guarenter;
  @override
  $LoanParticularsCopyWith<$Res>? get loanParticulars;
  @override
  $MiscellaneousDetailsCopyWith<$Res>? get miscellaneousDetails;
}

/// @nodoc
class __$$LoanImplCopyWithImpl<$Res>
    extends _$LoanCopyWithImpl<$Res, _$LoanImpl>
    implements _$$LoanImplCopyWith<$Res> {
  __$$LoanImplCopyWithImpl(_$LoanImpl _value, $Res Function(_$LoanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? loanStatusIndex = null,
    Object? applicant = null,
    Object? coApplicant = freezed,
    Object? guarenter = freezed,
    Object? loanParticulars = freezed,
    Object? miscellaneousDetails = freezed,
    Object? disbursementDate = freezed,
  }) {
    return _then(_$LoanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      loanStatusIndex: null == loanStatusIndex
          ? _value.loanStatusIndex
          : loanStatusIndex // ignore: cast_nullable_to_non_nullable
              as int,
      applicant: null == applicant
          ? _value.applicant
          : applicant // ignore: cast_nullable_to_non_nullable
              as Applicant,
      coApplicant: freezed == coApplicant
          ? _value.coApplicant
          : coApplicant // ignore: cast_nullable_to_non_nullable
              as CoApplicant?,
      guarenter: freezed == guarenter
          ? _value.guarenter
          : guarenter // ignore: cast_nullable_to_non_nullable
              as Guarenter?,
      loanParticulars: freezed == loanParticulars
          ? _value.loanParticulars
          : loanParticulars // ignore: cast_nullable_to_non_nullable
              as LoanParticulars?,
      miscellaneousDetails: freezed == miscellaneousDetails
          ? _value.miscellaneousDetails
          : miscellaneousDetails // ignore: cast_nullable_to_non_nullable
              as MiscellaneousDetails?,
      disbursementDate: freezed == disbursementDate
          ? _value.disbursementDate
          : disbursementDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoanImpl implements _Loan {
  const _$LoanImpl(
      {required this.id,
      required this.loanStatusIndex,
      required this.applicant,
      this.coApplicant,
      this.guarenter,
      this.loanParticulars,
      this.miscellaneousDetails,
      this.disbursementDate});

  @override
  final UniqueId id;
  @override
  final int loanStatusIndex;
  @override
  final Applicant applicant;
  @override
  final CoApplicant? coApplicant;
  @override
  final Guarenter? guarenter;
  @override
  final LoanParticulars? loanParticulars;
  @override
  final MiscellaneousDetails? miscellaneousDetails;
  @override
  final String? disbursementDate;

  @override
  String toString() {
    return 'Loan(id: $id, loanStatusIndex: $loanStatusIndex, applicant: $applicant, coApplicant: $coApplicant, guarenter: $guarenter, loanParticulars: $loanParticulars, miscellaneousDetails: $miscellaneousDetails, disbursementDate: $disbursementDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.loanStatusIndex, loanStatusIndex) ||
                other.loanStatusIndex == loanStatusIndex) &&
            (identical(other.applicant, applicant) ||
                other.applicant == applicant) &&
            (identical(other.coApplicant, coApplicant) ||
                other.coApplicant == coApplicant) &&
            (identical(other.guarenter, guarenter) ||
                other.guarenter == guarenter) &&
            (identical(other.loanParticulars, loanParticulars) ||
                other.loanParticulars == loanParticulars) &&
            (identical(other.miscellaneousDetails, miscellaneousDetails) ||
                other.miscellaneousDetails == miscellaneousDetails) &&
            (identical(other.disbursementDate, disbursementDate) ||
                other.disbursementDate == disbursementDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      loanStatusIndex,
      applicant,
      coApplicant,
      guarenter,
      loanParticulars,
      miscellaneousDetails,
      disbursementDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanImplCopyWith<_$LoanImpl> get copyWith =>
      __$$LoanImplCopyWithImpl<_$LoanImpl>(this, _$identity);
}

abstract class _Loan implements Loan {
  const factory _Loan(
      {required final UniqueId id,
      required final int loanStatusIndex,
      required final Applicant applicant,
      final CoApplicant? coApplicant,
      final Guarenter? guarenter,
      final LoanParticulars? loanParticulars,
      final MiscellaneousDetails? miscellaneousDetails,
      final String? disbursementDate}) = _$LoanImpl;

  @override
  UniqueId get id;
  @override
  int get loanStatusIndex;
  @override
  Applicant get applicant;
  @override
  CoApplicant? get coApplicant;
  @override
  Guarenter? get guarenter;
  @override
  LoanParticulars? get loanParticulars;
  @override
  MiscellaneousDetails? get miscellaneousDetails;
  @override
  String? get disbursementDate;
  @override
  @JsonKey(ignore: true)
  _$$LoanImplCopyWith<_$LoanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
