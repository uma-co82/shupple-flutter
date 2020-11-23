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

extension PrefectureExtension on Prefecture {
  String get toJp {
    switch (this) {
      case Prefecture.Hokkaido:
        return "北海道";
        break;
      case Prefecture.Aomori:
        return "青森県";
        break;
      case Prefecture.Iwate:
        return "岩手県";
        break;
      case Prefecture.Miyagi:
        return "宮城県";
        break;
      case Prefecture.Akita:
        return "秋田県";
        break;
      case Prefecture.Yamagata:
        return "山形県";
        break;
      case Prefecture.Hukushima:
        return "福島県";
        break;
      case Prefecture.Ibaragi:
        return "茨城県";
        break;
      case Prefecture.Totigi:
        return "栃木県";
        break;
      case Prefecture.Gunma:
        return "群馬県";
        break;
      case Prefecture.Saitama:
        return "埼玉県";
        break;
      case Prefecture.Tiba:
        return "千葉県";
        break;
      case Prefecture.Tokyo:
        return "東京都";
        break;
      case Prefecture.Kanagawa:
        return "神奈川県";
        break;
      case Prefecture.Nigata:
        return "新潟県";
        break;
      case Prefecture.Toyama:
        return "富山県";
        break;
      case Prefecture.Ishikawa:
        return "石川県";
        break;
      case Prefecture.Hukui:
        return "福井県";
        break;
      case Prefecture.Yamanashi:
        return "山梨県";
        break;
      case Prefecture.Nagano:
        return "長野県";
        break;
      case Prefecture.Gihu:
        return "岐阜県";
        break;
      case Prefecture.Sizuoka:
        return "静岡県";
        break;
      case Prefecture.Aiti:
        // TODO: Handle this case.
        break;
      case Prefecture.Mie:
        // TODO: Handle this case.
        break;
      case Prefecture.Shiga:
        // TODO: Handle this case.
        break;
      case Prefecture.Kyoto:
        // TODO: Handle this case.
        break;
      case Prefecture.Osaka:
        // TODO: Handle this case.
        break;
      case Prefecture.Hyogo:
        // TODO: Handle this case.
        break;
      case Prefecture.Nara:
        // TODO: Handle this case.
        break;
      case Prefecture.Wakayama:
        // TODO: Handle this case.
        break;
      case Prefecture.Tottori:
        // TODO: Handle this case.
        break;
      case Prefecture.Shimane:
        // TODO: Handle this case.
        break;
      case Prefecture.Okayama:
        // TODO: Handle this case.
        break;
      case Prefecture.Hiroshima:
        // TODO: Handle this case.
        break;
      case Prefecture.Yamaguchi:
        // TODO: Handle this case.
        break;
      case Prefecture.Tokushima:
        // TODO: Handle this case.
        break;
      case Prefecture.Kagawa:
        // TODO: Handle this case.
        break;
      case Prefecture.Ehime:
        // TODO: Handle this case.
        break;
      case Prefecture.Koti:
        // TODO: Handle this case.
        break;
      case Prefecture.Hukuoka:
        // TODO: Handle this case.
        break;
      case Prefecture.Saga:
        // TODO: Handle this case.
        break;
      case Prefecture.Nagasaki:
        // TODO: Handle this case.
        break;
      case Prefecture.Kumamoto:
        // TODO: Handle this case.
        break;
      case Prefecture.Oita:
        // TODO: Handle this case.
        break;
      case Prefecture.Miyazaki:
        // TODO: Handle this case.
        break;
      case Prefecture.Kagoshima:
        // TODO: Handle this case.
        break;
      case Prefecture.Okinawa:
        // TODO: Handle this case.
        break;
    }
  }
}
