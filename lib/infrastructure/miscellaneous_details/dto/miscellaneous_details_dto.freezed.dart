// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'miscellaneous_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiscellaneousDetailsDto _$MiscellaneousDetailsDtoFromJson(
    Map<String, dynamic> json) {
  return _MiscellaneousDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$MiscellaneousDetailsDto {
  PayoutDetailsDto get payoutDetails => throw _privateConstructorUsedError;
  ReferenceDetailsDto get referenceDetails =>
      throw _privateConstructorUsedError;
  RemarksAndMoreDto get remarksAndMore => throw _privateConstructorUsedError;
  CloudImageDto? get applicantImage => throw _privateConstructorUsedError;
  CloudImageDto? get coApplicantImage => throw _privateConstructorUsedError;
  CloudImageDto? get guarenterImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiscellaneousDetailsDtoCopyWith<MiscellaneousDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiscellaneousDetailsDtoCopyWith<$Res> {
  factory $MiscellaneousDetailsDtoCopyWith(MiscellaneousDetailsDto value,
          $Res Function(MiscellaneousDetailsDto) then) =
      _$MiscellaneousDetailsDtoCopyWithImpl<$Res, MiscellaneousDetailsDto>;
  @useResult
  $Res call(
      {PayoutDetailsDto payoutDetails,
      ReferenceDetailsDto referenceDetails,
      RemarksAndMoreDto remarksAndMore,
      CloudImageDto? applicantImage,
      CloudImageDto? coApplicantImage,
      CloudImageDto? guarenterImage});

  $PayoutDetailsDtoCopyWith<$Res> get payoutDetails;
  $ReferenceDetailsDtoCopyWith<$Res> get referenceDetails;
  $RemarksAndMoreDtoCopyWith<$Res> get remarksAndMore;
  $CloudImageDtoCopyWith<$Res>? get applicantImage;
  $CloudImageDtoCopyWith<$Res>? get coApplicantImage;
  $CloudImageDtoCopyWith<$Res>? get guarenterImage;
}

/// @nodoc
class _$MiscellaneousDetailsDtoCopyWithImpl<$Res,
        $Val extends MiscellaneousDetailsDto>
    implements $MiscellaneousDetailsDtoCopyWith<$Res> {
  _$MiscellaneousDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payoutDetails = null,
    Object? referenceDetails = null,
    Object? remarksAndMore = null,
    Object? applicantImage = freezed,
    Object? coApplicantImage = freezed,
    Object? guarenterImage = freezed,
  }) {
    return _then(_value.copyWith(
      payoutDetails: null == payoutDetails
          ? _value.payoutDetails
          : payoutDetails // ignore: cast_nullable_to_non_nullable
              as PayoutDetailsDto,
      referenceDetails: null == referenceDetails
          ? _value.referenceDetails
          : referenceDetails // ignore: cast_nullable_to_non_nullable
              as ReferenceDetailsDto,
      remarksAndMore: null == remarksAndMore
          ? _value.remarksAndMore
          : remarksAndMore // ignore: cast_nullable_to_non_nullable
              as RemarksAndMoreDto,
      applicantImage: freezed == applicantImage
          ? _value.applicantImage
          : applicantImage // ignore: cast_nullable_to_non_nullable
              as CloudImageDto?,
      coApplicantImage: freezed == coApplicantImage
          ? _value.coApplicantImage
          : coApplicantImage // ignore: cast_nullable_to_non_nullable
              as CloudImageDto?,
      guarenterImage: freezed == guarenterImage
          ? _value.guarenterImage
          : guarenterImage // ignore: cast_nullable_to_non_nullable
              as CloudImageDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayoutDetailsDtoCopyWith<$Res> get payoutDetails {
    return $PayoutDetailsDtoCopyWith<$Res>(_value.payoutDetails, (value) {
      return _then(_value.copyWith(payoutDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceDetailsDtoCopyWith<$Res> get referenceDetails {
    return $ReferenceDetailsDtoCopyWith<$Res>(_value.referenceDetails, (value) {
      return _then(_value.copyWith(referenceDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RemarksAndMoreDtoCopyWith<$Res> get remarksAndMore {
    return $RemarksAndMoreDtoCopyWith<$Res>(_value.remarksAndMore, (value) {
      return _then(_value.copyWith(remarksAndMore: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudImageDtoCopyWith<$Res>? get applicantImage {
    if (_value.applicantImage == null) {
      return null;
    }

    return $CloudImageDtoCopyWith<$Res>(_value.applicantImage!, (value) {
      return _then(_value.copyWith(applicantImage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudImageDtoCopyWith<$Res>? get coApplicantImage {
    if (_value.coApplicantImage == null) {
      return null;
    }

    return $CloudImageDtoCopyWith<$Res>(_value.coApplicantImage!, (value) {
      return _then(_value.copyWith(coApplicantImage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudImageDtoCopyWith<$Res>? get guarenterImage {
    if (_value.guarenterImage == null) {
      return null;
    }

    return $CloudImageDtoCopyWith<$Res>(_value.guarenterImage!, (value) {
      return _then(_value.copyWith(guarenterImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiscellaneousDetailsDtoImplCopyWith<$Res>
    implements $MiscellaneousDetailsDtoCopyWith<$Res> {
  factory _$$MiscellaneousDetailsDtoImplCopyWith(
          _$MiscellaneousDetailsDtoImpl value,
          $Res Function(_$MiscellaneousDetailsDtoImpl) then) =
      __$$MiscellaneousDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PayoutDetailsDto payoutDetails,
      ReferenceDetailsDto referenceDetails,
      RemarksAndMoreDto remarksAndMore,
      CloudImageDto? applicantImage,
      CloudImageDto? coApplicantImage,
      CloudImageDto? guarenterImage});

  @override
  $PayoutDetailsDtoCopyWith<$Res> get payoutDetails;
  @override
  $ReferenceDetailsDtoCopyWith<$Res> get referenceDetails;
  @override
  $RemarksAndMoreDtoCopyWith<$Res> get remarksAndMore;
  @override
  $CloudImageDtoCopyWith<$Res>? get applicantImage;
  @override
  $CloudImageDtoCopyWith<$Res>? get coApplicantImage;
  @override
  $CloudImageDtoCopyWith<$Res>? get guarenterImage;
}

/// @nodoc
class __$$MiscellaneousDetailsDtoImplCopyWithImpl<$Res>
    extends _$MiscellaneousDetailsDtoCopyWithImpl<$Res,
        _$MiscellaneousDetailsDtoImpl>
    implements _$$MiscellaneousDetailsDtoImplCopyWith<$Res> {
  __$$MiscellaneousDetailsDtoImplCopyWithImpl(
      _$MiscellaneousDetailsDtoImpl _value,
      $Res Function(_$MiscellaneousDetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payoutDetails = null,
    Object? referenceDetails = null,
    Object? remarksAndMore = null,
    Object? applicantImage = freezed,
    Object? coApplicantImage = freezed,
    Object? guarenterImage = freezed,
  }) {
    return _then(_$MiscellaneousDetailsDtoImpl(
      payoutDetails: null == payoutDetails
          ? _value.payoutDetails
          : payoutDetails // ignore: cast_nullable_to_non_nullable
              as PayoutDetailsDto,
      referenceDetails: null == referenceDetails
          ? _value.referenceDetails
          : referenceDetails // ignore: cast_nullable_to_non_nullable
              as ReferenceDetailsDto,
      remarksAndMore: null == remarksAndMore
          ? _value.remarksAndMore
          : remarksAndMore // ignore: cast_nullable_to_non_nullable
              as RemarksAndMoreDto,
      applicantImage: freezed == applicantImage
          ? _value.applicantImage
          : applicantImage // ignore: cast_nullable_to_non_nullable
              as CloudImageDto?,
      coApplicantImage: freezed == coApplicantImage
          ? _value.coApplicantImage
          : coApplicantImage // ignore: cast_nullable_to_non_nullable
              as CloudImageDto?,
      guarenterImage: freezed == guarenterImage
          ? _value.guarenterImage
          : guarenterImage // ignore: cast_nullable_to_non_nullable
              as CloudImageDto?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MiscellaneousDetailsDtoImpl extends _MiscellaneousDetailsDto
    with DiagnosticableTreeMixin {
  const _$MiscellaneousDetailsDtoImpl(
      {required this.payoutDetails,
      required this.referenceDetails,
      required this.remarksAndMore,
      required this.applicantImage,
      required this.coApplicantImage,
      required this.guarenterImage})
      : super._();

  factory _$MiscellaneousDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiscellaneousDetailsDtoImplFromJson(json);

  @override
  final PayoutDetailsDto payoutDetails;
  @override
  final ReferenceDetailsDto referenceDetails;
  @override
  final RemarksAndMoreDto remarksAndMore;
  @override
  final CloudImageDto? applicantImage;
  @override
  final CloudImageDto? coApplicantImage;
  @override
  final CloudImageDto? guarenterImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MiscellaneousDetailsDto(payoutDetails: $payoutDetails, referenceDetails: $referenceDetails, remarksAndMore: $remarksAndMore, applicantImage: $applicantImage, coApplicantImage: $coApplicantImage, guarenterImage: $guarenterImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MiscellaneousDetailsDto'))
      ..add(DiagnosticsProperty('payoutDetails', payoutDetails))
      ..add(DiagnosticsProperty('referenceDetails', referenceDetails))
      ..add(DiagnosticsProperty('remarksAndMore', remarksAndMore))
      ..add(DiagnosticsProperty('applicantImage', applicantImage))
      ..add(DiagnosticsProperty('coApplicantImage', coApplicantImage))
      ..add(DiagnosticsProperty('guarenterImage', guarenterImage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiscellaneousDetailsDtoImpl &&
            (identical(other.payoutDetails, payoutDetails) ||
                other.payoutDetails == payoutDetails) &&
            (identical(other.referenceDetails, referenceDetails) ||
                other.referenceDetails == referenceDetails) &&
            (identical(other.remarksAndMore, remarksAndMore) ||
                other.remarksAndMore == remarksAndMore) &&
            (identical(other.applicantImage, applicantImage) ||
                other.applicantImage == applicantImage) &&
            (identical(other.coApplicantImage, coApplicantImage) ||
                other.coApplicantImage == coApplicantImage) &&
            (identical(other.guarenterImage, guarenterImage) ||
                other.guarenterImage == guarenterImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payoutDetails, referenceDetails,
      remarksAndMore, applicantImage, coApplicantImage, guarenterImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MiscellaneousDetailsDtoImplCopyWith<_$MiscellaneousDetailsDtoImpl>
      get copyWith => __$$MiscellaneousDetailsDtoImplCopyWithImpl<
          _$MiscellaneousDetailsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiscellaneousDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _MiscellaneousDetailsDto extends MiscellaneousDetailsDto {
  const factory _MiscellaneousDetailsDto(
          {required final PayoutDetailsDto payoutDetails,
          required final ReferenceDetailsDto referenceDetails,
          required final RemarksAndMoreDto remarksAndMore,
          required final CloudImageDto? applicantImage,
          required final CloudImageDto? coApplicantImage,
          required final CloudImageDto? guarenterImage}) =
      _$MiscellaneousDetailsDtoImpl;
  const _MiscellaneousDetailsDto._() : super._();

  factory _MiscellaneousDetailsDto.fromJson(Map<String, dynamic> json) =
      _$MiscellaneousDetailsDtoImpl.fromJson;

  @override
  PayoutDetailsDto get payoutDetails;
  @override
  ReferenceDetailsDto get referenceDetails;
  @override
  RemarksAndMoreDto get remarksAndMore;
  @override
  CloudImageDto? get applicantImage;
  @override
  CloudImageDto? get coApplicantImage;
  @override
  CloudImageDto? get guarenterImage;
  @override
  @JsonKey(ignore: true)
  _$$MiscellaneousDetailsDtoImplCopyWith<_$MiscellaneousDetailsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
