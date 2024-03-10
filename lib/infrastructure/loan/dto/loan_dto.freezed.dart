// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoanDto _$LoanDtoFromJson(Map<String, dynamic> json) {
  return _LoanDto.fromJson(json);
}

/// @nodoc
mixin _$LoanDto {
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  int get loanStatusIndex => throw _privateConstructorUsedError;
  ApplicantDto get applicant => throw _privateConstructorUsedError;
  CoApplicantDto? get coApplicant => throw _privateConstructorUsedError;
  GuarenterDto? get guarenter => throw _privateConstructorUsedError;
  LoanParticularsDto? get loanParticulars => throw _privateConstructorUsedError;
  MiscellaneousDetailsDto? get miscellaneousDetails =>
      throw _privateConstructorUsedError;
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanDtoCopyWith<LoanDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanDtoCopyWith<$Res> {
  factory $LoanDtoCopyWith(LoanDto value, $Res Function(LoanDto) then) =
      _$LoanDtoCopyWithImpl<$Res, LoanDto>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      int loanStatusIndex,
      ApplicantDto applicant,
      CoApplicantDto? coApplicant,
      GuarenterDto? guarenter,
      LoanParticularsDto? loanParticulars,
      MiscellaneousDetailsDto? miscellaneousDetails,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});

  $ApplicantDtoCopyWith<$Res> get applicant;
  $CoApplicantDtoCopyWith<$Res>? get coApplicant;
  $GuarenterDtoCopyWith<$Res>? get guarenter;
  $LoanParticularsDtoCopyWith<$Res>? get loanParticulars;
  $MiscellaneousDetailsDtoCopyWith<$Res>? get miscellaneousDetails;
}

/// @nodoc
class _$LoanDtoCopyWithImpl<$Res, $Val extends LoanDto>
    implements $LoanDtoCopyWith<$Res> {
  _$LoanDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? loanStatusIndex = null,
    Object? applicant = null,
    Object? coApplicant = freezed,
    Object? guarenter = freezed,
    Object? loanParticulars = freezed,
    Object? miscellaneousDetails = freezed,
    Object? serverTimeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      loanStatusIndex: null == loanStatusIndex
          ? _value.loanStatusIndex
          : loanStatusIndex // ignore: cast_nullable_to_non_nullable
              as int,
      applicant: null == applicant
          ? _value.applicant
          : applicant // ignore: cast_nullable_to_non_nullable
              as ApplicantDto,
      coApplicant: freezed == coApplicant
          ? _value.coApplicant
          : coApplicant // ignore: cast_nullable_to_non_nullable
              as CoApplicantDto?,
      guarenter: freezed == guarenter
          ? _value.guarenter
          : guarenter // ignore: cast_nullable_to_non_nullable
              as GuarenterDto?,
      loanParticulars: freezed == loanParticulars
          ? _value.loanParticulars
          : loanParticulars // ignore: cast_nullable_to_non_nullable
              as LoanParticularsDto?,
      miscellaneousDetails: freezed == miscellaneousDetails
          ? _value.miscellaneousDetails
          : miscellaneousDetails // ignore: cast_nullable_to_non_nullable
              as MiscellaneousDetailsDto?,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApplicantDtoCopyWith<$Res> get applicant {
    return $ApplicantDtoCopyWith<$Res>(_value.applicant, (value) {
      return _then(_value.copyWith(applicant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoApplicantDtoCopyWith<$Res>? get coApplicant {
    if (_value.coApplicant == null) {
      return null;
    }

    return $CoApplicantDtoCopyWith<$Res>(_value.coApplicant!, (value) {
      return _then(_value.copyWith(coApplicant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GuarenterDtoCopyWith<$Res>? get guarenter {
    if (_value.guarenter == null) {
      return null;
    }

    return $GuarenterDtoCopyWith<$Res>(_value.guarenter!, (value) {
      return _then(_value.copyWith(guarenter: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoanParticularsDtoCopyWith<$Res>? get loanParticulars {
    if (_value.loanParticulars == null) {
      return null;
    }

    return $LoanParticularsDtoCopyWith<$Res>(_value.loanParticulars!, (value) {
      return _then(_value.copyWith(loanParticulars: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MiscellaneousDetailsDtoCopyWith<$Res>? get miscellaneousDetails {
    if (_value.miscellaneousDetails == null) {
      return null;
    }

    return $MiscellaneousDetailsDtoCopyWith<$Res>(_value.miscellaneousDetails!,
        (value) {
      return _then(_value.copyWith(miscellaneousDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoanDtoImplCopyWith<$Res> implements $LoanDtoCopyWith<$Res> {
  factory _$$LoanDtoImplCopyWith(
          _$LoanDtoImpl value, $Res Function(_$LoanDtoImpl) then) =
      __$$LoanDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      int loanStatusIndex,
      ApplicantDto applicant,
      CoApplicantDto? coApplicant,
      GuarenterDto? guarenter,
      LoanParticularsDto? loanParticulars,
      MiscellaneousDetailsDto? miscellaneousDetails,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});

  @override
  $ApplicantDtoCopyWith<$Res> get applicant;
  @override
  $CoApplicantDtoCopyWith<$Res>? get coApplicant;
  @override
  $GuarenterDtoCopyWith<$Res>? get guarenter;
  @override
  $LoanParticularsDtoCopyWith<$Res>? get loanParticulars;
  @override
  $MiscellaneousDetailsDtoCopyWith<$Res>? get miscellaneousDetails;
}

/// @nodoc
class __$$LoanDtoImplCopyWithImpl<$Res>
    extends _$LoanDtoCopyWithImpl<$Res, _$LoanDtoImpl>
    implements _$$LoanDtoImplCopyWith<$Res> {
  __$$LoanDtoImplCopyWithImpl(
      _$LoanDtoImpl _value, $Res Function(_$LoanDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? loanStatusIndex = null,
    Object? applicant = null,
    Object? coApplicant = freezed,
    Object? guarenter = freezed,
    Object? loanParticulars = freezed,
    Object? miscellaneousDetails = freezed,
    Object? serverTimeStamp = null,
  }) {
    return _then(_$LoanDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      loanStatusIndex: null == loanStatusIndex
          ? _value.loanStatusIndex
          : loanStatusIndex // ignore: cast_nullable_to_non_nullable
              as int,
      applicant: null == applicant
          ? _value.applicant
          : applicant // ignore: cast_nullable_to_non_nullable
              as ApplicantDto,
      coApplicant: freezed == coApplicant
          ? _value.coApplicant
          : coApplicant // ignore: cast_nullable_to_non_nullable
              as CoApplicantDto?,
      guarenter: freezed == guarenter
          ? _value.guarenter
          : guarenter // ignore: cast_nullable_to_non_nullable
              as GuarenterDto?,
      loanParticulars: freezed == loanParticulars
          ? _value.loanParticulars
          : loanParticulars // ignore: cast_nullable_to_non_nullable
              as LoanParticularsDto?,
      miscellaneousDetails: freezed == miscellaneousDetails
          ? _value.miscellaneousDetails
          : miscellaneousDetails // ignore: cast_nullable_to_non_nullable
              as MiscellaneousDetailsDto?,
      serverTimeStamp: null == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LoanDtoImpl extends _LoanDto {
  const _$LoanDtoImpl(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.id,
      required this.loanStatusIndex,
      required this.applicant,
      required this.coApplicant,
      required this.guarenter,
      required this.loanParticulars,
      required this.miscellaneousDetails,
      @ServerTimeStampConverter() required this.serverTimeStamp})
      : super._();

  factory _$LoanDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanDtoImplFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final String? id;
  @override
  final int loanStatusIndex;
  @override
  final ApplicantDto applicant;
  @override
  final CoApplicantDto? coApplicant;
  @override
  final GuarenterDto? guarenter;
  @override
  final LoanParticularsDto? loanParticulars;
  @override
  final MiscellaneousDetailsDto? miscellaneousDetails;
  @override
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'LoanDto(id: $id, loanStatusIndex: $loanStatusIndex, applicant: $applicant, coApplicant: $coApplicant, guarenter: $guarenter, loanParticulars: $loanParticulars, miscellaneousDetails: $miscellaneousDetails, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanDtoImpl &&
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
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @JsonKey(ignore: true)
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
      serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanDtoImplCopyWith<_$LoanDtoImpl> get copyWith =>
      __$$LoanDtoImplCopyWithImpl<_$LoanDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanDtoImplToJson(
      this,
    );
  }
}

abstract class _LoanDto extends LoanDto {
  const factory _LoanDto(
      {@JsonKey(includeToJson: false, includeFromJson: false) final String? id,
      required final int loanStatusIndex,
      required final ApplicantDto applicant,
      required final CoApplicantDto? coApplicant,
      required final GuarenterDto? guarenter,
      required final LoanParticularsDto? loanParticulars,
      required final MiscellaneousDetailsDto? miscellaneousDetails,
      @ServerTimeStampConverter()
      required final FieldValue serverTimeStamp}) = _$LoanDtoImpl;
  const _LoanDto._() : super._();

  factory _LoanDto.fromJson(Map<String, dynamic> json) = _$LoanDtoImpl.fromJson;

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id;
  @override
  int get loanStatusIndex;
  @override
  ApplicantDto get applicant;
  @override
  CoApplicantDto? get coApplicant;
  @override
  GuarenterDto? get guarenter;
  @override
  LoanParticularsDto? get loanParticulars;
  @override
  MiscellaneousDetailsDto? get miscellaneousDetails;
  @override
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$LoanDtoImplCopyWith<_$LoanDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
