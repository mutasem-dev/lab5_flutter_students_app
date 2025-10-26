
class Student {
  String name, id, phone, address;
  Student({
    required this.address,
    required this.id,
    required this.phone,
    required this.name,
  });
  @override
  String toString() {
    return '''
      name: $name
      id: $id
      phone: $phone
      address: $address
      ''';
  }

  
}
