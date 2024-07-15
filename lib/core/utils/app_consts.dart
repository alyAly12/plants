class AppConsts {
  static const String baseUrl = 'https://trefle.io/api/v1';
  static const String token ='T_pLrwakJxrCrv7DwBxoT2JdPr2kwqkdzKG8CYhVeVo';
  static const String allPlantsPath = '$baseUrl/plants?token=$token';

  static  String getCity({required String cityName}) => '$baseUrl/distributions/$cityName/plants?token=$token';
}
