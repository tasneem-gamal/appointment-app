class SpecializationResponseModel {
  int? id;
  String? name;
  List<Doctors>? doctorsList;

  SpecializationResponseModel({
    this.id,
    this.name,
    this.doctorsList,
  });

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) {
    var doctorsListJson = json['data']['doctors'] as List?; 
    List<Doctors>? doctors = doctorsListJson?.map((doc) => Doctors.fromJson(doc)).toList();

    return SpecializationResponseModel(
      id: json['data']['id'],
      name: json['data']['name'],
      doctorsList: doctors,
    );
  }
}

class Doctors {
  int? id;
  String? name;
  String? email;
  String? phoneNumber; 
  String? photo;
  String? gender;
  int? price;
  String? degree;

  Doctors({
    this.id,
    this.name,
    this.email,
    this.phoneNumber,
    this.photo,
    this.gender,
    this.price,
    this.degree,
  });

  factory Doctors.fromJson(Map<String, dynamic> json) {
    return Doctors(
      id: json['id'],  
      name: json['name'],
      email: json['email'],
      phoneNumber: json['phone'], 
      photo: json['photo'],
      gender: json['gender'],
      price: json['appoint_price'],
      degree: json['degree'],
    );
  }
}
