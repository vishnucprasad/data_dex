// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'miscellaneous_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MiscellaneousDetails {
  PayoutDetails get payoutDetails => throw _privateConstructorUsedError;
  ReferenceDetails get referenceDetails => throw _privateConstructorUsedError;
  RemarksAndMore get remarksAndMore => throw _privateConstructorUsedError;
  CloudImage? get applicantImage => throw _privateConstructorUsedError;
  CloudImage? get coApplicantImage => throw _privateConstructorUsedError;
  CloudImage? get guarenterImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MiscellaneousDetailsCopyWith<MiscellaneousDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiscellaneousDetailsCopyWith<$Res> {
  factory $MiscellaneousDetailsCopyWith(MiscellaneousDetails value,
          $Res Function(MiscellaneousDetails) then) =
      _$MiscellaneousDetailsCopyWithImpl<$Res, MiscellaneousDetails>;
  @useResult
  $Res call(
      {PayoutDetails payoutDetails,
      ReferenceDetails referenceDetails,
      RemarksAndMore remarksAndMore,
      CloudImage? applicantImage,
      CloudImage? coApplicantImage,
      CloudImage? guarenterImage});

  $PayoutDetailsCopyWith<$Res> get payoutDetails;
  $ReferenceDetailsCopyWith<$Res> get referenceDetails;
  $RemarksAndMoreCopyWith<$Res> get remarksAndMore;
  $CloudImageCopyWith<$Res>? get applicantImage;
  $CloudImageCopyWith<$Res>? get coApplicantImage;
  $CloudImageCopyWith<$Res>? get guarenterImage;
}

/// @nodoc
class _$MiscellaneousDetailsCopyWithImpl<$Res,
        $Val extends MiscellaneousDetails>
    implements $MiscellaneousDetailsCopyWith<$Res> {
  _$MiscellaneousDetailsCopyWithImpl(this._value, this._then);

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
              as PayoutDetails,
      referenceDetails: null == referenceDetails
          ? _value.referenceDetails
          : referenceDetails // ignore: cast_nullable_to_non_nullable
              as ReferenceDetails,
      remarksAndMore: null == remarksAndMore
          ? _value.remarksAndMore
          : remarksAndMore // ignore: cast_nullable_to_non_nullable
              as RemarksAndMore,
      applicantImage: freezed == applicantImage
          ? _value.applicantImage
          : applicantImage // ignore: cast_nullable_to_non_nullable
              as CloudImage?,
      coApplicantImage: freezed == coApplicantImage
          ? _value.coApplicantImage
          : coApplicantImage // ignore: cast_nullable_to_non_nullable
              as CloudImage?,
      guarenterImage: freezed == guarenterImage
          ? _value.guarenterImage
          : guarenterImage // ignore: cast_nullable_to_non_nullable
              as CloudImage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayoutDetailsCopyWith<$Res> get payoutDetails {
    return $PayoutDetailsCopyWith<$Res>(_value.payoutDetails, (value) {
      return _then(_value.copyWith(payoutDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceDetailsCopyWith<$Res> get referenceDetails {
    return $ReferenceDetailsCopyWith<$Res>(_value.referenceDetails, (value) {
      return _then(_value.copyWith(referenceDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RemarksAndMoreCopyWith<$Res> get remarksAndMore {
    return $RemarksAndMoreCopyWith<$Res>(_value.remarksAndMore, (value) {
      return _then(_value.copyWith(remarksAndMore: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudImageCopyWith<$Res>? get applicantImage {
    if (_value.applicantImage == null) {
      return null;
    }

    return $CloudImageCopyWith<$Res>(_value.applicantImage!, (value) {
      return _then(_value.copyWith(applicantImage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudImageCopyWith<$Res>? get coApplicantImage {
    if (_value.coApplicantImage == null) {
      return null;
    }

    return $CloudImageCopyWith<$Res>(_value.coApplicantImage!, (value) {
      return _then(_value.copyWith(coApplicantImage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CloudImageCopyWith<$Res>? get guarenterImage {
    if (_value.guarenterImage == null) {
      return null;
    }

    return $CloudImageCopyWith<$Res>(_value.guarenterImage!, (value) {
      return _then(_value.copyWith(guarenterImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MiscellaneousDetailsImplCopyWith<$Res>
    implements $MiscellaneousDetailsCopyWith<$Res> {
  factory _$$MiscellaneousDetailsImplCopyWith(_$MiscellaneousDetailsImpl value,
          $Res Function(_$MiscellaneousDetailsImpl) then) =
      __$$MiscellaneousDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PayoutDetails payoutDetails,
      ReferenceDetails referenceDetails,
      RemarksAndMore remarksAndMore,
      CloudImage? applicantImage,
      CloudImage? coApplicantImage,
      CloudImage? guarenterImage});

  @override
  $PayoutDetailsCopyWith<$Res> get payoutDetails;
  @override
  $ReferenceDetailsCopyWith<$Res> get referenceDetails;
  @override
  $RemarksAndMoreCopyWith<$Res> get remarksAndMore;
  @override
  $CloudImageCopyWith<$Res>? get applicantImage;
  @override
  $CloudImageCopyWith<$Res>? get coApplicantImage;
  @override
  $CloudImageCopyWith<$Res>? get guarenterImage;
}

/// @nodoc
class __$$MiscellaneousDetailsImplCopyWithImpl<$Res>
    extends _$MiscellaneousDetailsCopyWithImpl<$Res, _$MiscellaneousDetailsImpl>
    implements _$$MiscellaneousDetailsImplCopyWith<$Res> {
  __$$MiscellaneousDetailsImplCopyWithImpl(_$MiscellaneousDetailsImpl _value,
      $Res Function(_$MiscellaneousDetailsImpl) _then)
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
    return _then(_$MiscellaneousDetailsImpl(
      payoutDetails: null == payoutDetails
          ? _value.payoutDetails
          : payoutDetails // ignore: cast_nullable_to_non_nullable
              as PayoutDetails,
      referenceDetails: null == referenceDetails
          ? _value.referenceDetails
          : referenceDetails // ignore: cast_nullable_to_non_nullable
              as ReferenceDetails,
      remarksAndMore: null == remarksAndMore
          ? _value.remarksAndMore
          : remarksAndMore // ignore: cast_nullable_to_non_nullable
              as RemarksAndMore,
      applicantImage: freezed == applicantImage
          ? _value.applicantImage
          : applicantImage // ignore: cast_nullable_to_non_nullable
              as CloudImage?,
      coApplicantImage: freezed == coApplicantImage
          ? _value.coApplicantImage
          : coApplicantImage // ignore: cast_nullable_to_non_nullable
              as CloudImage?,
      guarenterImage: freezed == guarenterImage
          ? _value.guarenterImage
          : guarenterImage // ignore: cast_nullable_to_non_nullable
              as CloudImage?,
    ));
  }
}

/// @nodoc

class _$MiscellaneousDetailsImpl implements _MiscellaneousDetails {
  const _$MiscellaneousDetailsImpl(
      {required this.payoutDetails,
      required this.referenceDetails,
      required this.remarksAndMore,
      required this.applicantImage,
      required this.coApplicantImage,
      required this.guarenterImage});

  @override
  final PayoutDetails payoutDetails;
  @override
  final ReferenceDetails referenceDetails;
  @override
  final RemarksAndMore remarksAndMore;
  @override
  final CloudImage? applicantImage;
  @override
  final CloudImage? coApplicantImage;
  @override
  final CloudImage? guarenterImage;

  @override
  String toString() {
    return 'MiscellaneousDetails(payoutDetails: $payoutDetails, referenceDetails: $referenceDetails, remarksAndMore: $remarksAndMore, applicantImage: $applicantImage, coApplicantImage: $coApplicantImage, guarenterImage: $guarenterImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiscellaneousDetailsImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, payoutDetails, referenceDetails,
      remarksAndMore, applicantImage, coApplicantImage, guarenterImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MiscellaneousDetailsImplCopyWith<_$MiscellaneousDetailsImpl>
      get copyWith =>
          __$$MiscellaneousDetailsImplCopyWithImpl<_$MiscellaneousDetailsImpl>(
              this, _$identity);
}

abstract class _MiscellaneousDetails implements MiscellaneousDetails {
  const factory _MiscellaneousDetails(
      {required final PayoutDetails payoutDetails,
      required final ReferenceDetails referenceDetails,
      required final RemarksAndMore remarksAndMore,
      required final CloudImage? applicantImage,
      required final CloudImage? coApplicantImage,
      required final CloudImage? guarenterImage}) = _$MiscellaneousDetailsImpl;

  @override
  PayoutDetails get payoutDetails;
  @override
  ReferenceDetails get referenceDetails;
  @override
  RemarksAndMore get remarksAndMore;
  @override
  CloudImage? get applicantImage;
  @override
  CloudImage? get coApplicantImage;
  @override
  CloudImage? get guarenterImage;
  @override
  @JsonKey(ignore: true)
  _$$MiscellaneousDetailsImplCopyWith<_$MiscellaneousDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
