enum Gender { Male, Female }

extension GenderExtension on Gender {
  String get jpLabel {
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
  String get jpLabel {
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
        return "愛知県";
        break;
      case Prefecture.Mie:
        return "三重県";
        break;
      case Prefecture.Shiga:
        return "滋賀県";
        break;
      case Prefecture.Kyoto:
        return "京都府";
        break;
      case Prefecture.Osaka:
        return "大阪府";
        break;
      case Prefecture.Hyogo:
        return "兵庫県";
        break;
      case Prefecture.Nara:
        return "奈良県";
        break;
      case Prefecture.Wakayama:
        return "和歌山県";
        break;
      case Prefecture.Tottori:
        return "鳥取県";
        break;
      case Prefecture.Shimane:
        return "島根県";
        break;
      case Prefecture.Okayama:
        return "岡山県";
        break;
      case Prefecture.Hiroshima:
        return "広島県";
        break;
      case Prefecture.Yamaguchi:
        return "山口県";
        break;
      case Prefecture.Tokushima:
        return "徳島県";
        break;
      case Prefecture.Kagawa:
        return "香川県";
        break;
      case Prefecture.Ehime:
        return "愛媛県";
        break;
      case Prefecture.Koti:
        return "高知県";
        break;
      case Prefecture.Hukuoka:
        return "福岡県";
        break;
      case Prefecture.Saga:
        return "佐賀県";
        break;
      case Prefecture.Nagasaki:
        return "長崎県";
        break;
      case Prefecture.Kumamoto:
        return "熊本県";
        break;
      case Prefecture.Oita:
        return "大分県";
        break;
      case Prefecture.Miyazaki:
        return "宮崎県";
        break;
      case Prefecture.Kagoshima:
        return "鹿児島県";
        break;
      case Prefecture.Okinawa:
        return "沖縄県";
        break;
    }
  }
}

enum MatchingReason { Renai, Asobi, NomitomoSagashi, SyumatsuDate }

extension MatchingReasonExtension on MatchingReason {
  String get jpLabel {
    switch (this) {
      case MatchingReason.Renai:
        return "恋愛";
        break;
      case MatchingReason.Asobi:
        return "遊び";
        break;
      case MatchingReason.NomitomoSagashi:
        return "飲み友探し";
        break;
      case MatchingReason.SyumatsuDate:
        return "週末お出掛け";
        break;
    }
  }
}
