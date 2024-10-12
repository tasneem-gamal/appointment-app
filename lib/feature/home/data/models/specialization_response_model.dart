class SpecializationsResponseModel {
  List<SpecializationData>? specializationDataList;

  SpecializationsResponseModel({
    this.specializationDataList,
  });

  factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) {
  var specializationDataJson = json['data'] as List?;
  
  if (specializationDataJson == null) {
    return SpecializationsResponseModel(specializationDataList: []);
  }

  List<SpecializationData>? specializationDataList = specializationDataJson
      .map((spec) => SpecializationData.fromJson(spec))
      .toList();


  return SpecializationsResponseModel(
    specializationDataList: specializationDataList,
  );
}

}

class SpecializationData {
  int? id;
  String? name;
  List<Doctor>? doctorsList;

  SpecializationData({
    this.id,
    this.name,
    this.doctorsList,
  });

  factory SpecializationData.fromJson(Map<String, dynamic> json) {
    var doctorsListJson = json['doctors'] as List?;
    List<Doctor>? doctorsList = doctorsListJson?.map((doc) => Doctor.fromJson(doc)).toList();

    return SpecializationData(
      id: json['id'],
      name: json['name'],
      doctorsList: doctorsList,
    );
  }

  @override
  String toString() {
    return 'SpecializationData(id: $id, name: $name, doctorsList: ${doctorsList?.length} doctors)';
  }
}


class Doctor {
  int? id;
  String? name;
  String? email;
  String? phoneNumber;
  String? photo;
  String? gender;
  int? price;
  String? degree;
  String? startTime;
  String? endTime;
  String? practicePlace;

  Doctor({
    this.id,
    this.name,
    this.email,
    this.phoneNumber,
    this.photo,
    this.gender,
    this.price,
    this.degree,
    this.startTime,
    this.endTime,
    this.practicePlace
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phoneNumber: json['phone'],
      photo: json['photo'],
      gender: json['gender'],
      price: json['appoint_price'],
      degree: json['degree'],
      startTime: json['start_time'],
      endTime: json['end_time'],
      practicePlace: json['city']['name']
    );
  }
}
