enum ImageEnumsPng {
  logo,
  logo_dark,
  bg_home,
  bg_contact,
  bg_section,
  bg_services,
  bg_about,
  img_services1,
  img_services2,
  img_services3,
  ic_flag_tr,
  ic_flag_en,
}

extension PngExtension on ImageEnumsPng {
  String get toPathPng => 'assets/images/$name.png';
}

enum ImageEnumsSvg {
  car_audi,
  car_bmw,
  car_citroen,
  car_chevrolet,
  car_fiat,
  car_ford,
  car_mazda,
  car_mercedes,
  car_mitsubishi,
  car_opel,
  car_seat,
  car_skoda,
  car_volvo,
}

extension SvgExtension on ImageEnumsSvg {
  String get toPathSvg => 'assets/images/$name.svg';
}
