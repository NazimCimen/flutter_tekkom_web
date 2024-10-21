enum ImageEnumsPng {
  logo,
  logo_border,
  bg_home,
  bg_texttile,
  bg_mining,
  bg_form,
  bg_catalog,
  product1,
  product2,
  product3,
  product4,
  product5,
  product6,
  product7,
  product8,
  product9,
  product10,
  product11,
  product12,
}

extension PngExtension on ImageEnumsPng {
  String get toPathPng => 'assets/images/$name.png';
}

enum ImageEnumsSvg {
  ic_home,
  ic_texttile,
  ic_mining,
  ic_contact_us,
}

extension SvgExtension on ImageEnumsSvg {
  String get toPathSvg => 'assets/images/$name.svg';
}
