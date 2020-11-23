enum Gender { Male, Female }

extension GenderExtension on Gender {
  String get toJp {
    switch (this) {
      case Gender.Male:
        return "男性";
        break;
      case Gender.Female:
        return "女性";
        break;
      default:
        return "";
    }
  }
}

enum Prefecture {
  Hokkaido,
  Aomori,
  Iwate,
  Miyagi,
  Akita,
  Yamagata,
  Hukushima,
  Ibaragi,
  Totigi,
  Gunma,
  Saitama,
  Tiba,
  Tokyo,
  Kanagawa,
  Nigata,
  Toyama,
  Ishikawa,
  Hukui,
  Yamanashi,
  Nagano,
  Gihu,
  Sizuoka,
  Aiti,
  Mie,
  Shiga,
  Kyoto,
  Osaka,
  Hyogo,
  Nara,
  Wakayama,
  Tottori,
  Shimane,
  Okayama,
  Hiroshima,
  Yamaguchi,
  Tokushima,
  Kagawa,
  Ehime,
  Koti,
  Hukuoka,
  Saga,
  Nagasaki,
  Kumamoto,
  Oita,
  Miyazaki,
  Kagoshima,
  Okinawa
}
