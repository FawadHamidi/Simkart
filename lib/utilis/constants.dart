import 'package:simkart/utilis/khadamat_model.dart';

class Constants {
  static List<KhadamatModel> roshkhad = [
    KhadamatModel(
        'چک کردن بیلانس', 'کود چک بیلانس "#444*".', 'چک بیلانس', true, '*444#'),
    KhadamatModel('گرفتن 40 افغانی قرضه', 'کود گرفتن قرضه "#122*".',
        ' گرفتن قرضه', true, '*122#'),
    KhadamatModel(
        'گرفتن 100 ام بی قرضه',
        '  برای گرفتن قرضه "L 100" را  به 200  بفرستید.',
        'گرفتن قرضه',
        false,
        '200',
        'L 100'),
    KhadamatModel(
        'فعال نمودن 3 جی',
        '  برای فعالسازس "3G" را  به 555  بفرستید.',
        'فعالسازی',
        false,
        '555',
        '3G'),
    KhadamatModel(
        'کود ارسال کریدیت', ' "#مبلغ*شماره گیرنده*123*" ', '-', null, null),
    KhadamatModel(
        'کود ارسال انترنت', ' "#شماره گیرنده*مبلغ*500*" ', '-', null, null),
    KhadamatModel(
        'اضافه کردن کریدیت', ' "#کود 14 رقمی کریدیت*222*".', '-', null, null),
  ];

  static List<KhadamatModel> etikhad = [
    KhadamatModel(
        'چک کردن بیلانس', 'کود چک بیلانس "#123*".', 'چک بیلانس', true, '*123#'),
    KhadamatModel(
        'گرفتن 40 افغانی قرضه',
        '  برای گرفتن قرضه "SIM" را  به 3378  بفرستید.',
        'گرفتن قرضه',
        false,
        '3378',
        'SIM'),
    KhadamatModel('فعال نمودن 3 جی',
        '  برای فعالسازس "3G" را  به 3378  بفرستید.', 'فعالسازی', false, '3G'),
    KhadamatModel('فعال نمودن 4 جی',
        '  برای فعالسازس "4G" را  به 3378  بفرستید.', 'فعالسازی', false, '4G'),
    KhadamatModel(
        'کود ارسال کریدیت', ' "#مبلغ*شماره گیرنده*125*" ', '-', null, null),
    KhadamatModel(
        'اضافه کردن کریدیت', ' "#کود 14 رقمی کریدیت*404*".', '-', null),
  ];
  static List<KhadamatModel> salaamkhad = [
    KhadamatModel(
        'چک کردن بیلانس', 'کود چک بیلانس "#888*".', 'چک بیلانس', true, '*888#'),
    KhadamatModel('گرفتن 20 افغانی قرضه', 'کود گرفتن قرضه "#742*".',
        'گرفتن قرضه', true, '*742'),
    KhadamatModel(
        'فعال نمودن 3 جی',
        '  برای فعالسازس "DATA" را  به 740  بفرستید.',
        'فعالسازی',
        false,
        '740',
        'DATA'),
    KhadamatModel('کود ارسال کریدیت', ' "#مبلغ*شماره گیرنده*741*" ', '-', null),
    KhadamatModel(
        'اضافه کردن کریدیت', ' "#کود 14 رقمی کریدیت*777*".', '-', null),
  ];
  static List<KhadamatModel> mtnkhad = [
    KhadamatModel(
        'چک کردن بیلانس', 'کود چک بیلانس "#789*".', 'چک بیلانس', true, '*789'),
    KhadamatModel(
        'فعال نمودن 3 جی',
        '  برای فعالسازس پیام خالی را  به 667  بفرستید.',
        'فعالسازی',
        false,
        '667',
        ''),
    KhadamatModel(
        'اضافه کردن کریدیت', ' "#کود 14 رقمی کریدیت*788*".', '-', null),
    KhadamatModel(
        'کود ارسال کریدیت', ' "#شماره گیرنده*مبلغ*2*776*" ', '-', null),
  ];
  static List<KhadamatModel> afcckhad = [
    KhadamatModel(
        'چک کردن بیلانس', 'کود چک بیلانس "#123*".', 'چک بیلانس', true, '*123#'),
    KhadamatModel(
        'کود ارسال کریدیت', ' "#مبلغ*شماره گیرنده*1*441*" ', '-', null),
    KhadamatModel(
        'اضافه کردن کریدیت', ' "#کود 14 رقمی کریدیت*124*".', '-', null),
  ];
}
