enum ImageEnumsPng {
  logo,
  logo_border,
  bg_home,
  img_services1,
  img_services2,
  img_services3,
  img_about_us,
  ic_flag_tr,
  ic_flag_en,
}

extension PngExtension on ImageEnumsPng {
  String get toPathPng => 'assets/images/$name.png';
}

enum ImageEnumsSvg {
  ic_home,
  ic_texttile,
  ic_mining,
  ic_contact_us,
  ic_location,
  ic_phone,
  ic_mail,
}

extension SvgExtension on ImageEnumsSvg {
  String get toPathSvg => 'assets/images/$name.svg';
}
