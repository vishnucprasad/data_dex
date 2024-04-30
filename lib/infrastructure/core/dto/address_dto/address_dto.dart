import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/core/models/address/address.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
class AddressDto with _$AddressDto {
  const AddressDto._();

  const factory AddressDto({
    required String houseName,
    required String postOffice,
    required String streetName,
    required String? landmark,
    required String pincode,
  }) = _AddressDto;

  factory AddressDto.fromDomain(Address address) {
    return AddressDto(
      houseName: address.houseName.getOrCrash(),
      postOffice: address.postOffice.getOrCrash(),
      streetName: address.streetName.getOrCrash(),
      landmark: address.landmark?.getOrCrash(),
      pincode: address.pincode.getOrCrash(),
    );
  }

  Address toDomain() {
    return Address(
      houseName: HouseName(houseName),
      postOffice: PostOffice(postOffice),
      streetName: StreetName(streetName),
      landmark: landmark == null ? null : Landmark(landmark!),
      pincode: PinCode(pincode),
    );
  }

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);

  factory AddressDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return AddressDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
