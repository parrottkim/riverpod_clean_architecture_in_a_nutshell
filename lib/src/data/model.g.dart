// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      carts: (json['carts'] as List<dynamic>)
          .map((e) => CartElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'carts': instance.carts,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$CartElementImpl _$$CartElementImplFromJson(Map<String, dynamic> json) =>
    _$CartElementImpl(
      id: json['id'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => CartProductElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      discountedTotal: json['discountedTotal'] as int,
      userId: json['userId'] as int,
      totalCartProductElements: json['totalCartProductElements'] as int,
      totalQuantity: json['totalQuantity'] as int,
    );

Map<String, dynamic> _$$CartElementImplToJson(_$CartElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'products': instance.products,
      'total': instance.total,
      'discountedTotal': instance.discountedTotal,
      'userId': instance.userId,
      'totalCartProductElements': instance.totalCartProductElements,
      'totalQuantity': instance.totalQuantity,
    };

_$CartProductElementImpl _$$CartProductElementImplFromJson(
        Map<String, dynamic> json) =>
    _$CartProductElementImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      price: json['price'] as int,
      quantity: json['quantity'] as int,
      total: json['total'] as int,
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      discountedPrice: json['discountedPrice'] as int,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$CartProductElementImplToJson(
        _$CartProductElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'quantity': instance.quantity,
      'total': instance.total,
      'discountPercentage': instance.discountPercentage,
      'discountedPrice': instance.discountedPrice,
      'thumbnail': instance.thumbnail,
    };

_$KeywordImpl _$$KeywordImplFromJson(Map<String, dynamic> json) =>
    _$KeywordImpl(
      keyword: json['keyword'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$KeywordImplToJson(_$KeywordImpl instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'date': instance.date.toIso8601String(),
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$ProductElementImpl _$$ProductElementImplFromJson(Map<String, dynamic> json) =>
    _$ProductElementImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      stock: json['stock'] as int,
      brand: json['brand'] as String,
      category: json['category'] as String,
      thumbnail: json['thumbnail'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProductElementImplToJson(
        _$ProductElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'stock': instance.stock,
      'brand': instance.brand,
      'category': instance.category,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
    };

_$TokenImpl _$$TokenImplFromJson(Map<String, dynamic> json) => _$TokenImpl(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$TokenImplToJson(_$TokenImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

_$DecodedTokenImpl _$$DecodedTokenImplFromJson(Map<String, dynamic> json) =>
    _$DecodedTokenImpl(
      id: json['id'] as int,
      username: json['username'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      gender: json['gender'] as String,
      image: json['image'] as String,
      iat: json['iat'] as int,
      exp: json['exp'] as int,
    );

Map<String, dynamic> _$$DecodedTokenImplToJson(_$DecodedTokenImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'image': instance.image,
      'iat': instance.iat,
      'exp': instance.exp,
    };

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      maidenName: json['maidenName'] as String,
      age: json['age'] as int,
      gender: json['gender'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      birthDate: DateTime.parse(json['birthDate'] as String),
      image: json['image'] as String,
      bloodGroup: json['bloodGroup'] as String,
      height: json['height'] as int,
      weight: (json['weight'] as num).toDouble(),
      eyeColor: json['eyeColor'] as String,
      hair: Hair.fromJson(json['hair'] as Map<String, dynamic>),
      domain: json['domain'] as String,
      ip: json['ip'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      macAddress: json['macAddress'] as String,
      university: json['university'] as String,
      bank: Bank.fromJson(json['bank'] as Map<String, dynamic>),
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      ein: json['ein'] as String,
      ssn: json['ssn'] as String,
      userAgent: json['userAgent'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'maidenName': instance.maidenName,
      'age': instance.age,
      'gender': instance.gender,
      'email': instance.email,
      'phone': instance.phone,
      'username': instance.username,
      'password': instance.password,
      'birthDate': instance.birthDate.toIso8601String(),
      'image': instance.image,
      'bloodGroup': instance.bloodGroup,
      'height': instance.height,
      'weight': instance.weight,
      'eyeColor': instance.eyeColor,
      'hair': instance.hair,
      'domain': instance.domain,
      'ip': instance.ip,
      'address': instance.address,
      'macAddress': instance.macAddress,
      'university': instance.university,
      'bank': instance.bank,
      'company': instance.company,
      'ein': instance.ein,
      'ssn': instance.ssn,
      'userAgent': instance.userAgent,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      address: json['address'] as String,
      city: json['city'] as String,
      coordinates:
          Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      postalCode: json['postalCode'] as String,
      state: json['state'] as String,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'city': instance.city,
      'coordinates': instance.coordinates,
      'postalCode': instance.postalCode,
      'state': instance.state,
    };

_$CoordinatesImpl _$$CoordinatesImplFromJson(Map<String, dynamic> json) =>
    _$CoordinatesImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$CoordinatesImplToJson(_$CoordinatesImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$BankImpl _$$BankImplFromJson(Map<String, dynamic> json) => _$BankImpl(
      cardExpire: json['cardExpire'] as String,
      cardNumber: json['cardNumber'] as String,
      cardType: json['cardType'] as String,
      currency: json['currency'] as String,
      iban: json['iban'] as String,
    );

Map<String, dynamic> _$$BankImplToJson(_$BankImpl instance) =>
    <String, dynamic>{
      'cardExpire': instance.cardExpire,
      'cardNumber': instance.cardNumber,
      'cardType': instance.cardType,
      'currency': instance.currency,
      'iban': instance.iban,
    };

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      department: json['department'] as String,
      name: json['name'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'department': instance.department,
      'name': instance.name,
      'title': instance.title,
    };

_$HairImpl _$$HairImplFromJson(Map<String, dynamic> json) => _$HairImpl(
      color: json['color'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$HairImplToJson(_$HairImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'type': instance.type,
    };
