import 'package:flutter/material.dart';
import 'word_style.dart';

final lessonNo = [lesson1, lesson2, lesson3, lesson4, lesson5, lesson6];

final lesson1 = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    titleText('کرمانجی و بادینی جیاوازی چییە؟'),
    paragraphText(
        'کاتێک کە ئەڵێین زمانی کوردی کرمانجی مەبەستمان لە کۆمەڵە لەهجەیەکە بە هەموویان پێکەوە پێیان ئەوترێت کوردی کرمانجی، وەک کوردی سلێمانی و هەڵەبجەو کەلار هەموو کوردی سۆرانین، بەهەمان شێوەش بادینی یەکێکە لە لەهجەکانی کوردی کرمانجی.'),
    const SizedBox(
      height: 40,
    ),
    noteText(
        'ئایا زانیوتە کە لە سەدا هەشتای %80  کوردانی جیهان بە زمانی کوردی کرمانجی قسە ئەکەن؟'),
    const SizedBox(
      height: 40,
    ),
    paragraphText('لە زمانی کوردی کرمانجی دا سێ جۆر وشەمان بەرچاو ئەکەوێت:'),
    topicText('جۆری یەکەم'),
    paragraphText(
        'ئەم جۆرە وشانە لەگەڵ کوردی سۆرانی دا هیچ جیاوازی یەکیان نیە. نموونە :'),
    const SizedBox(
      height: 15,
    ),
    NewWord(
      text1: 'بچووک',
      text2: 'بچووک',
    ),
    NewWord(
      text1: 'خوێندن',
      text2: 'خوێندن',
    ),
    NewWord(
      text1: 'دەست',
      text2: 'دەست',
    ),
    NewWord(
      text1: 'ڕاست',
      text2: 'ڕاست',
    ),
    NewWord(
      text1: 'زانست',
      text2: 'زانست',
    ),
    topicText('جۆری دووەم'),
    paragraphText(
        'ئەم جۆرە وشانە لە کوردی سۆرانی یەوە زۆر نزیکن، بەڵام تەنها یەک پیت یان دوو پیت کەمتر یان زیاترە لە سۆرانی. نموونە :'),
    const SizedBox(
      height: 15,
    ),
    NewWord(
      text1: 'سار',
      text2: 'سارد',
    ),
    NewWord(
      text1: 'شەڤ',
      text2: 'شەو',
    ),
    NewWord(
      text1: 'باڤ',
      text2: 'باوک',
    ),
    NewWord(
      text1: 'سڤک',
      text2: 'سوک',
    ),
    NewWord(
      text1: 'هێک',
      text2: 'هێلکە',
    ),
    const SizedBox(
      height: 20,
    ),
    paragraphText(
        'وەک ئەبینین، جۆری یەکەم و دووەم زۆر ئاسانن بۆ ناسینەوەو فێربوون. '),
    noteText(
        'زۆرجار پیتی "ڤ" لە کوردی کرمانجیدا ئەبێت بە پیتی "و" لە سۆرانیدا. '),
    topicText('جۆری سێیەم'),
    paragraphText(
        'ئەم جۆرە وشانە لەگەڵ کوردی سۆرانی دا تەواو جیاوازن، بۆیە پێویستە وەک زمانێکی تر تەماشایان بکەین، بەڵام خۆشبەختانە ئەم جۆرە وشانە کەمتر لە %20 ی وشەکانن و لە %80 ی وشەکان جۆری یەکەم و دووەمن.'),
    const SizedBox(
      height: 30,
    ),
    paragraphText(
        'بە درێژایی وانەکان هەر سێ جۆرەکە بە تێکەڵی بەکارئەهێنین، هەرکاتێک وشەیەکی نوێ ئەبینیت بە دەنگی بەرز چەند جارێک بیخوێنەرەوەو بەوپەڕی خۆشحاڵی و سەربەرزییەوە وشەکە لەبەربکە، چونکە زمان زمانی خۆتە. '),
  ],
);

final lesson2 = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    titleText('جێناوەکان'),
    topicText('جێناو چی یە؟'),
    paragraphText('جێناو ئەو وشەیە کە جێگەی ناوێک ئەگرێتەوە. بۆ نموونە:'),
    paragraphText('ئارام خوێندکارێکی زیرەکە.'),
    paragraphText('ئەتوانین لە بری وشەی ئارام جێناوێک بەکاربهێنین.'),
    const SizedBox(
      height: 20,
    ),
    paragraphText(
        'ئەو خوێندکارێکی زیرەکە. وشەی "ئەو" جێگەی ئارامی گرتەوە لە ڕستەکەدا.'),
    paragraphText('جێناوە سەربەخۆکان لە زمانی کوردی سۆرانیدا ئەمانەن :'),
    const SizedBox(
      height: 20,
    ),
    paragraphText('من \n تۆ \n ئەو (نێرومێ) \n ئێمە \n ئێوە \n ئەوان'),
    const SizedBox(
      height: 20,
    ),
    paragraphText(
        'بەڵام لە زمانی کوردی کرمانجی دا دوو جۆر جێناوی سەربەخۆ هەیە، ئەگەر جێناوەکە بکەری ڕستەکە بوو ، یان بە شێوەیەکی ئاسانتر ئەگەر ڕستەکە بە جێناو دەستی پێکرد ئەوا ئەم جێناوانە بەکارئەهێنین :'),
    const SizedBox(
      height: 20,
    ),
    NewWord(
      text1: 'ئەز',
      text2: 'من',
    ),
    NewWord(
      text1: 'تو',
      text2: 'تۆ',
    ),
    NewWord(
      text1: 'ئەو',
      text2: 'ئەو',
    ),
    NewWord(
      text1: 'ئەم',
      text2: 'ئێمە',
    ),
    NewWord(
      text1: 'هوون',
      text2: 'ئێوە',
    ),
    NewWord(
      text1: 'ئەو',
      text2: 'ئەوان',
    ),
    paragraphText(
        'لەیادت بێت ئەگەر ڕستەکە بە جێناو دەستی پێکرد ئەوا ئەم جێناوانە بەکاربهێنە ، نموونە :'),
    const SizedBox(
      height: 20,
    ),
    KurmanjiExample(
      text1: 'ئەز ',
      color1: Colors.green,
      color3: Colors.green,
      text2: 'کورد',
      text3: 'م',
    ),
    KurmanjiExample(
      text1: 'تو ',
      color1: Colors.green,
      color3: Colors.green,
      text2: 'کورد',
      text3: 'ی',
    ),
    KurmanjiExample(
      text1: 'ئەو ',
      color1: Colors.green,
      color3: Colors.green,
      text2: 'کورد',
      text3: 'ە',
    ),
    KurmanjiExample(
      text1: 'ئەم ',
      color1: Colors.green,
      color3: Colors.green,
      text2: 'کورد',
      text3: 'ن',
    ),
    KurmanjiExample(
      text1: 'هوون ',
      color1: Colors.green,
      color3: Colors.green,
      text2: 'کورد',
      text3: 'ن',
    ),
    KurmanjiExample(
      text1: 'ئەو ',
      color1: Colors.green,
      color3: Colors.green,
      text2: 'کورد',
      text3: 'ن',
    ),
    const SizedBox(
      height: 20,
    ),
    paragraphText(
        'هەوڵ بدە چەندین جار بە دەنگی بەرز ئەم جێناوانە بخوێنیتەوە بۆ ئەوەی ڕابێیت بە بەکارهێنانیان .'),
    const SizedBox(
      height: 30,
    ),
    paragraphText(
        'ئەگەر ناوەکە بە بزوێنێک کۆتایی هاتبوو، بۆ نموونە : ئەمریکی ، فەڕەنسی ، ئەڵمانیا  ئەوا :'),
    const SizedBox(
      height: 20,
    ),
    KurmanjiExample(
      text1: 'ئەز ',
      color1: Colors.green,
      color3: Colors.green,
      text2: 'ئەمریکی ',
      text3: 'مە',
    ),
    KurmanjiExample(
      text1: 'تو ',
      color1: Colors.green,
      color3: Colors.green,
      text2: 'ئەمریکی ',
      text3: 'یی',
    ),
    KurmanjiExample(
      text1: 'ئەو ',
      color1: Colors.green,
      color3: Colors.green,
      text2: 'ئەمریکی ',
      text3: 'یە',
    ),
    KurmanjiExample(
      text1: 'ئەم ',
      color1: Colors.green,
      color3: Colors.green,
      text2: 'ئەمریکی ',
      text3: 'نە',
    ),
    KurmanjiExample(
      text1: 'هوون ',
      color1: Colors.green,
      color3: Colors.green,
      text2: 'ئەمریکی ',
      text3: 'نە',
    ),
    KurmanjiExample(
      text1: 'ئەو ',
      color1: Colors.green,
      color3: Colors.green,
      text2: 'ئەمریکی ',
      text3: 'نە',
    ),
    const SizedBox(
      height: 20,
    ),
    noteText(
        'سەرنج بدە، زۆر جیاواز نیە، تەنها یەک بزوێنی زیاترە لە جاران : \n من کوردم \n من ئەمریکی مە'),
    paragraphText(
        'کەواتە ئەگەر ڕستەکە بە جێناو دەستی پێکرد ئەوا ئەو جێناوانەی سەرەوە بەکار ئەهێنین، بەڵام لە هەموو حاڵەتەکانی تردا ئەم جێناوانەی خوارەوە بەکار ئەهێنین :'),
    NewWord(
      text1: 'من',
      text2: 'من',
    ),
    NewWord(
      text1: 'تە',
      text2: 'تۆ',
    ),
    NewWord(
      text1: 'وی (نێر)، وێ (مێ)',
      text2: 'ئەو',
    ),
    NewWord(
      text1: 'مە',
      text2: 'ئێمە',
    ),
    NewWord(
      text1: 'وە',
      text2: 'ئێوە',
    ),
    NewWord(
      text1: 'وان',
      text2: 'ئەوان',
    ),
    const SizedBox(
      height: 20,
    ),
    paragraphText('نموونە:'),
    paragraphText('ناڤێ من ئەحمەدە. ناڤێ تە چییە؟'),
    noteText(
        'تێبینی: \n ناڤێ ئەز ئەحمەدە هەڵەیە! چونکە کاتێک ئەز بەکارئەهێنین کە ڕستەکە بە ئەز دەست پێبکات.'),
    paragraphText('نموونەی زیاتر:'),
    KurmanjiExample(
      text1: 'وەلاتێ ',
      color2: Colors.green,
      text2: 'من ',
      text3: 'کوردستانە',
    ),
    KurmanjiExample(
      text1: 'وەلاتێ ',
      color2: Colors.green,
      text2: 'تە ',
      text3: 'کوردستانە',
    ),
    KurmanjiExample(
      text1: 'وەلاتێ ',
      color2: Colors.green,
      text2: 'وی ',
      text3: 'کوردستانە',
    ),
    KurmanjiExample(
      text1: 'وەلاتێ ',
      color2: Colors.green,
      text2: 'وێ ',
      text3: 'کوردستانە',
    ),
    KurmanjiExample(
      text1: 'وەلاتێ ',
      color2: Colors.green,
      text2: 'مە ',
      text3: 'کوردستانە',
    ),
    KurmanjiExample(
      text1: 'وەلاتێ ',
      color2: Colors.green,
      text2: 'وان ',
      text3: 'کوردستانە',
    ),
    topicText('لەیادت نەچێت:'),
    NewWord(text1: 'وی', text2: 'بۆ نێر'),
    NewWord(text1: 'وێ', text2: 'بۆ مێ'),
  ],
);

final lesson3 = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    titleText('کردارەکان'),
    paragraphText(
        'زۆربەی کردارەکانی زمانی کوردی کرمانجی وەک کوردی سۆرانین، بۆ نموونە:'),
    const SizedBox(
      height: 20,
    ),
    NewWord(
      text1: 'چوون',
      text2: 'چوون، ڕۆیشتن',
    ),
    NewWord(
      text1: 'تێگهشتن',
      text2: 'تێگەیشتن',
    ),
    NewWord(
      text1: 'دەرکەتن',
      text2: 'دەرکەوتن، دەرچوون',
    ),
    NewWord(
      text1: 'دیتن',
      text2: 'دیتن، بینین',
    ),
    NewWord(
      text1: 'گرتن',
      text2: 'گرتن',
    ),
    NewWord(
      text1: 'هاتن',
      text2: 'هاتن',
    ),
    NewWord(
      text1: 'کەتن',
      text2: 'کەوتن',
    ),
    const SizedBox(
      height: 20,
    ),
    paragraphText(
        'وەک بینیتان، زۆربەی کردارەکان وەک یەک وان. بەڵام کۆمەڵە کردارێکی زۆر سەرەتایی و گرنگ هەن کە بە تەواوی جیاوازن لەگەڵ کوردی سۆرانی و فێربوونیان زۆر زۆر گرنگە بۆ تێگەیشتن لە کوردی کرمانجی. '),
    const SizedBox(height: 20),
    table(
        text1: 'خەبتین',
        text2: 'کارکردن (لە وشەی خەبات کردنەوە هاتووە. وشەیەکی زۆر گرنگە)'),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'دایکا من ',
      text2: 'ناخەبتە',
    ),
    SoraniExample(
      text1: 'دایکی من ',
      text2: 'کارناکات',
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'نێرگز ڕۆژا شەمیێ ناخەبتە',
    ),
    SoraniExample(
      text1: 'نێرگز ڕۆژی شەممە کارناکات',
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'تو ژ من باشتر دخەبتی',
    ),
    SoraniExample(
      text1: 'تۆ لە من باشتر کاردەکەی',
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'دڤێ ئەز بخەبتم',
    ),
    SoraniExample(
      text1: 'دەبێت من کاربکەم',
    ),
    const SizedBox(height: 40),
    table(text1: 'ونداکرن', text2: 'ون کردن'),
    KurmanjiExample(
      text1: 'ئەز جزدانا خوێ وندا کریە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(text1: 'من جزدانەکەی خۆم ون کردوە'),
    KurmanjiExample(
      text1: 'ئەز چانتایێ خوێ وندا کریە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(text1: 'من جانتاکەی خۆم ون کردووە'),
    KurmanjiExample(
      text1: 'دڤێ تو وان وندا نەکی',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(text1: 'دەبێت تۆ ئەوانە ون نەکەی'),
    const SizedBox(height: 40),
    table(
        text1: 'سەکنین',
        text2: 'وەستان، مانەوە، چاوەڕێ کردن (لە وشەی عەرەبی "سکن" ەوە هاتووە)'),
    KurmanjiExample(
      text1: 'ئەحمەد چما دسەکنە ؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(text1: 'ئەحمەد بۆچی وەستاوە (بۆچی چاوەڕێ ئەکات)؟'),
    KurmanjiExample(
      text1: 'د جهێ خوێ دە ناسەکنە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
        text1: 'لە جێی خۆی دا ناوەستێت (خۆی لە شوێنێکدا پێ ڕاناگیرێت)'),
    const SizedBox(height: 40),
    table(text1: 'لیستن', text2: 'یاری کردن'),
    table(text1: 'ل بەندا ... مان', text2: 'چاوەڕێی ... کردن'),
    KurmanjiExample(
      text1: 'من ل بەندا تە دمێنم',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(text1: 'من چاوەڕێی تۆ ئەکەم'),
    KurmanjiExample(
      text1: 'تو ل بەندا کێ دمینی؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(text1: 'تۆ چاوەڕێی کێ ئەکەیت؟'),
    const SizedBox(height: 40),
    table(text1: 'چێکرن', text2: 'چاک کردن، دروست کردن'),
    table(text1: 'ڤەخوارن', text2: 'خواردنەوە'),
    noteText(
        'ئەم وشەیە : ڤەخوارن ، ئەگەر "ڤە" کە بخەینە کۆتایی وشەکە ئەبێت بە "خوارن ڤە" ، ئەمجا "ڤ" کە بگۆڕین بۆ "و" \n خوارن وە = خواردنەوە \n وەک ئەبینین ئێستا زۆر نزیکترە لە وشەی "خواردنەوە". لەوانەیە ئەمەش یەکێک بێت لەو وشانەی کە بە تێپەڕبوونی کات گۆڕانی بەسەردا هاتبێت. '),
    KurmanjiExample(
        text1: 'ئەز قەهوە ڤەدخوم،  لێ چایی ڤەناخوم',
        fontWeight: FontWeight.bold),
    SoraniExample(text1: 'من قاوە دەخۆمەوە، بەڵام چایی ناخۆمەوە'),
    KurmanjiExample(text1: 'تو دخوازی چی ڤەخوی؟', fontWeight: FontWeight.bold),
    SoraniExample(text1: 'تۆ دەتەوێت چی بخۆیتەوە؟'),
    const SizedBox(height: 40),
    table(text1: 'ڤەگەڕین', text2: 'گەڕانەوە'),
    table(text1: 'ڤەحەسیان', text2: 'حەسانەوە'),
    table(text1: 'زڤڕین', text2: 'سوڕانەوە'),
    table(text1: 'سیل بوون', text2: 'عاجز کردن، زویر کردن'),
    table(text1: 'ئاژۆتن', text2: 'لێخوڕین'),
    table(text1: 'هین بوون', text2: 'فێربوون'),
    KurmanjiExample(
      text1: 'دەما کو ئارام 16 ساڵی بوو هینی ئاژۆتنێ بوو',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'کاتێک کە ئارام 16 ساڵ بوو فێری سەیارە لێخوڕین بوو',
    ),
    table(text1: 'ئاڤێتن', text2: 'هاوێشتن'),
    table(text1: 'کۆلان', text2: 'کۆڵین، هەڵکۆڵین'),
    table(text1: 'بەرهەڤ کرن', text2: 'کۆکردنەوە'),
    table(text1: 'گەڕین', text2: 'گەڕان'),
    table(text1: 'ئاڤژەنی کرن', text2: 'مەلەکردن'),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ئارام ل حەوز ئاڤژەنی دکر',
    ),
    SoraniExample(
      text1: 'ئارام لە حەوزەکە مەلەی دەکرد',
    ),
    const SizedBox(
      height: 40,
    ),
    table(text1: 'شاندن', text2: 'ناردن، وەشاندن'),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'چ قاس پەرە ل شاندنا پاکەتەکێ ژ بۆ کەنەدایێ دچە؟',
    ),
    SoraniExample(
      text1: 'ناردنی پاکەتێک بۆ کەنەدا چەنێک پارەی تێ دەچێت؟',
    ),
    const SizedBox(
      height: 40,
    ),
    table(text1: 'کارین', text2: 'توانین'),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ئەز دکارم',
    ),
    SoraniExample(
      text1: 'من دەتوانم',
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'هوون دکارن بێن؟',
    ),
    SoraniExample(
      text1: 'ئێوە دەتوانن بێن؟',
    ),
    const SizedBox(
      height: 40,
    ),
    table(text1: 'ڕونیشتن', text2: 'دانیشتن'),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ئەز ڕونیشتم',
    ),
    SoraniExample(
      text1: 'من دانیشتم',
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ئەز ل سەر کورسی یەک ڕونیشتم',
    ),
    SoraniExample(
      text1: 'من لە سەر کورسی ێک دانیشتم',
    ),
    const SizedBox(
      height: 40,
    ),
    table(text1: 'ڕابوون', text2: 'لەخەوهەستان، ڕابوون'),
    KurmanjiExample(
      text1: 'د ساعەت چەندان دە ڕابووی ؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'لە سەعات چەند دا لەخەوهەستای؟',
    ),
    const SizedBox(
      height: 40,
    ),
    table(text1: 'مەشین', text2: 'پیاسەکردن، ڕۆیشتن'),
    KurmanjiExample(
      text1: 'ئەو ل پارکێ دمەشیان',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(text1: 'ئەوان لە پارکەکە پیاسەیان دەکرد'),
    KurmanjiExample(
      text1: 'ئەم ژ بۆ مەشێ دەرکەڤین؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئێمە بۆ پیاسە بڕۆینەدەرەوە؟',
    ),
    const SizedBox(height: 40),
    table(text1: 'بۆرین', text2: 'تێپەڕین'),
    KurmanjiExample(
      text1: 'ڤێ  سپێدە د بەر من را بۆری',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەم بەیانی یە لەبەردەم مندا  تێپەڕی',
    ),
    const SizedBox(height: 40),
    table(text1: 'دەرباس بوون', text2: 'دەرباز بوون'),
    table(text1: 'گازند کرن', text2: 'گلەیی و گازندە کردن'),
    KurmanjiExample(
      text1: 'ئەز گازند ل ڕێڤبەرێ ڕێستۆرانێ کر',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'من گلەییم لە بەڕێوەبەری ڕێستۆرانتەکە کرد',
    ),
    const SizedBox(height: 40),
  ],
);

final lesson4 = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    titleText('ئیزافە'),
    paragraphText(
        'کاتێک لە کوردی سۆرانی دا ناوێک ئەبەستینەوە بە جێناوێک یان ئاوەڵناوێکەوە تەنها پیتی "ی" بەکاردەهێنین ، بۆ نموونە :'),
    topicText('ناو + ئاوەڵناو'),
    SoraniExample(
      text1: 'سێو',
      text2: 'ی ',
      color2: Colors.red,
      text3: 'سور',
    ),
    topicText('ناوێکی نەناسراو + ئاوەڵناو'),
    SoraniExample(
      text1: 'سێوێک',
      text2: 'ی ',
      color2: Colors.red,
      text3: 'سور',
    ),
    topicText('ناو + جێناو'),
    SoraniExample(
      text1: 'ماڵ',
      text2: 'ی ',
      color2: Colors.red,
      text3: 'من',
    ),
    topicText('ناوێکی ناسراو + جێناو'),
    SoraniExample(
      text1: 'ماڵەکە',
      text2: 'ی ',
      color2: Colors.red,
      text3: 'من',
    ),
    paragraphText('لە هەموو حاڵەتەکاندا تەنها پیتی "ی" مان بەکارهێنا'),
    const SizedBox(
      height: 30,
    ),
    paragraphText('بەڵام لە کوردی کرمانجی دا بەم شێوەی خوارەوەیە:'),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ئەگەر ناوەکە مێ بوو، ئەوا پیتی ',
      text2: '"ا" ',
      color2: Colors.red,
      text3: 'بەکارئەهێنین:',
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ماڵ',
      text2: 'ا ',
      text3: 'مە',
      color2: Colors.red,
    ),
    SoraniExample(
      text1: 'ماڵ',
      text2: 'ی ',
      text3: 'ئێمە',
      color2: Colors.red,
    ),
    noteText(
        'هەروەک چۆن لە زمانی عەرەبی دا هەموو وشەکان ڕەگەزیان هەیە، زمانی کوردی کرمانجیش بەهەمان شێوەیە، هەموو وشەیەک ڕەگەزی خۆی هەیە، وشەکان یان نێرن یان مێ.'),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'دایک',
      text2: 'ا ',
      text3: 'من',
      color2: Colors.red,
    ),
    SoraniExample(
      text1: 'دایک',
      text2: 'ی ',
      text3: 'من',
      color2: Colors.red,
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'بەحر',
      text2: 'ا ',
      text3: 'وان',
      color2: Colors.red,
    ),
    SoraniExample(
      text1: 'بەحر',
      text2: 'ی ',
      text3: 'وان',
      color2: Colors.red,
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ئەگەر ناوەکە مێ بوو، نەناسراو بوو ئەوا پیتی ',
      text2: '"ە" ',
      color2: Colors.red,
      text3: 'بەکارئەهێنین:',
    ),
    noteText('نموونەی ناوی نەناسراو: \n سێڤەك : سێوێک \n ماڵەک : ماڵێک'),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'سێڤەک',
      text2: 'ە ',
      text3: 'سۆر',
      color2: Colors.red,
    ),
    SoraniExample(
      text1: 'سێوێک',
      text2: 'ی ',
      text3: 'سوور',
      color2: Colors.red,
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'کچەک',
      text2: 'ە ',
      text3: 'ژیر',
      color2: Colors.red,
    ),
    SoraniExample(
      text1: 'کچێک',
      text2: 'ی ',
      text3: 'ژیر (زیرەک)',
      color2: Colors.red,
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ئەگەر ناوەکە نێر بوو، ئەوا پیتی ',
      text2: '"ێ" ',
      color2: Colors.red,
      text3: 'بەکارئەهێنین:',
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'چەم',
      text2: 'ێ ',
      text3: 'فراتێ',
      color2: Colors.red,
    ),
    SoraniExample(
      text1: 'چەم',
      text2: 'ی ',
      text3: 'فورات',
      color2: Colors.red,
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ئەگەر ناوەکە نێر بوو نەناسراو بوو، ئەوا پیتی ',
      text2: '"ی" ',
      color2: Colors.red,
      text3: 'بەکارئەهێنین:',
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ساڵح خوێندکارەک',
      text2: 'ی ',
      text3: 'بیست و دوو ساڵی یە',
      color2: Colors.red,
    ),
    SoraniExample(
      text1: 'ساڵح خوێندکارێک',
      text2: 'ی ',
      text3: 'بیست و دوو ساڵە',
      color2: Colors.red,
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ئەگەر ناوەکە کۆ بوو ئەوا تەنها پیتی ',
      text2: '"ێن" ',
      color2: Colors.red,
      text3: 'بەکارئەهێنین بۆ هەموو حاڵەتەکان',
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'برای',
      text2: 'ێن ',
      text3: 'من',
      color2: Colors.red,
    ),
    SoraniExample(
      text1: 'براکان',
      text2: 'ی ',
      text3: 'من',
      color2: Colors.red,
    ),
  ],
);

final lesson5 = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    titleText('داهاتوو لە زمانی کوردی کرمانجی'),
    paragraphText(
        'وشەی " دێ " چەندین جار بەرچاوم ئەکەوت بەڵام نەمئەزانی بە واتای چی دێت، بۆ ماوەیەکی دوورودرێژ زۆر حەزم ئەکرد بزانم چ مانایەکی هەیە، بەڵام خۆشبەختانە ئێستا ئەزانم و فێری بووم وە  لە کەمتر لە یەک خولەکدا تۆش فێری ئەبیت.'),
    const SizedBox(
      height: 20,
    ),
    SoraniExample(
      text1: 'دێ: ',
      color1: Colors.red,
      text2:
          'ناوەکەی خۆی بە خۆیەوەیەتی ، " دێت " یان ئەو شتەی کە دێت لە داهاتوودا، هەرکاتێک کە باسی شتێک ئەکەین لە داهاتوودا ئەوا ئەم وشەیە بەکارئە‌هێنین ، لە زمانی ئینگلیزی دا "will" و لە عەرەبی دا "سوف" ەیە.',
    ),
    KurmanjiExample(
      text1: 'ئەز ',
      text2: 'دێ ',
      color2: Colors.red,
      text3: 'بخوێنم',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'من ',
      text2: 'دە',
      text3: 'خوێنم (لە داهاتوودا)',
      color2: Colors.red,
    ),
    KurmanjiExample(
      text1: 'تو ',
      text2: 'دێ ',
      color2: Colors.red,
      text3: 'بخوێنی',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'تۆ ',
      text2: 'دە',
      text3: 'خوێنی',
      color2: Colors.red,
    ),
    KurmanjiExample(
      text1: 'ئەز ',
      text2: 'دێ ',
      color2: Colors.red,
      text3: 'سبەهێ  بچم  نەخوەشخانەیێ',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'من سبەینێ ',
      text2: 'دە',
      text3: 'چم بۆ نەخۆشخانە',
      color2: Colors.red,
    ),
    const SizedBox(
      height: 40,
    ),
    paragraphText('بەڵام لە کاتی بەکارهێنانی نەرێ دا ، لەگەڵ سۆرانی یەک شتە:'),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ئەز ناخوینم',
    ),
    SoraniExample(
      text1: 'من ناخوێنم',
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ئەز ناخەبتم',
    ),
    SoraniExample(
      text1: 'من کارناکەم (داهاتوو)',
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ئەز نایەم',
    ),
    SoraniExample(
      text1: 'من نایەم',
    ),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ئەز نایەنم',
    ),
    SoraniExample(
      text1: 'من نایهێنم',
    ),
    const SizedBox(
      height: 30,
    ),
    paragraphText(
        'زۆرجار لە تەلەفزیۆن و ڕادیۆدا کاتێک بە کرمانجی قسە ئەکەن گوێمان لێ ئەبێت کە ئەڵێن " ….. هاتنە کوشتن ، یان …… هاتنە بریندار کرن "  باشە بۆچی وشەی "هاتن" بەکاردێت؟'),
    paragraphText(
        'ئەمەش ڕێزمانێکی زۆر زۆر ئاسانە و لە کەمتر لە یەک خولەکدا فێری ئەبیت :'),
    topicText('هاتن + کردار'),
    paragraphText('ئەمە لە کاتێکدا بەکار ئەهێنین کە بکەر نەزانراوە.'),
    paragraphText('بۆ نموونە:'),
    SoraniExample(
      text1: 'نوسرا',
    ),
    SoraniExample(
      text1: 'کتێبەکە نوسرا. کێ نوسی؟ نازانین، چونکە بکەر نادیارە',
    ),
    SoraniExample(
      text1: 'لە کرمانجی دا لە بری "را"  کرداری هاتن بەکارئە‌هێنین',
    ),
    KurmanjiExample(
      text1: 'کتێبەک هاتیە نڤیساندن',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'کتێبێک نوسرا',
    ),
    KurmanjiExample(
      text1: 'کەسەک هاتیە کوشتن',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'کەسێک کوژرا',
    ),
    KurmanjiExample(
      text1: 'فرات جەوەری ، د سالا  1959 دە ل گوندەکی مێردینێ هاتیە دنیایێ.',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1:
          'فرات جەوەری، لە ساڵی 1959دا  لە گوندێکی مێردین  هاتە دنیا. (وەک ئەبینن ، هەندێک جار لە کوردی سۆرانیشدا ئەم جۆرە ڕێزمانە بەکارئەهێنین).',
    ),
  ],
);

final lesson6 = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    titleText('کۆتا وانە'),
    paragraphText(
        'لەوانەیە ئەم وانەیە قورسترین وانە بێت، بەڵام لەڕاستیدا ئەوەندە قورس نیە، تەنها پێویستە چەند وشەیەک لەبەربکەیت و فێربیت کە چۆن بەکاریان بهێنیت، یان لێیان تێبگەیت ئەگەر گوێت لێبوو. بۆیە ئەم وانەیە چەندین جار بخوێنەرەوە تا تەواو شارەزای ئەبیت.'),
    paragraphText(
        'ئەگەر وشەی "ئەڤ" یان "ئەو" لە سەرەتای ڕستەدا هاتن، ئەوا وەکو سۆرانی وەهایە:'),
    const SizedBox(height: 20),
    NewWord(
      text1: 'ئەڤ',
      text2: 'ئەم (ئەمە)',
    ),
    NewWord(
      text1: 'ئەو',
      text2: 'ئەو (ئەوە)',
    ),
    const SizedBox(height: 20),
    KurmanjiExample(
      text1: 'ئەڤ ساڵ',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەم ساڵ',
    ),
    KurmanjiExample(
      text1: 'ئەڤڕۆ',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەمڕۆ',
    ),
    KurmanjiExample(
      text1: 'ئەڤ کار ژ بۆ ئەحمەد هەسانە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەم کارە بۆ ئەحمەد ئاسانە',
    ),
    KurmanjiExample(
      text1: 'ئەو مرۆڤ',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەو پیاوە',
    ),
    KurmanjiExample(
      text1: 'ئەو مەکتەب',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەو مەکتەبە (خوێندنگایە)',
    ),
    const SizedBox(height: 20),
    paragraphText('بەڵام ئەگەر ڕستەکە بە "ئەڤ ، یان "ئەو" دەستی پێنەکرد ئەوا:'),
    const SizedBox(height: 20),
    NewWord(
      text1: 'ڤی',
      text2: 'ئەم  (نێر)',
    ),
    NewWord(
      text1: 'ڤێ',
      text2: 'ئەم (مێ)',
    ),
    const SizedBox(height: 20),
    NewWord(
      text1: 'وی',
      text2: 'ئەو (نێر)',
    ),
    NewWord(
      text1: 'وێ',
      text2: 'ئەو (مێ)',
    ),
    const SizedBox(height: 20),
    paragraphText(
        'کاتێک لە کوردی سۆرانی "ئەم" یان "ئەو" بەکارئەهێنین، بزوێنی "ە" ش بەکارئەهێنین لەگەڵ ناوەکە، بۆ نموونە:'),
    paragraphText('ئەم پیاوە'),
    paragraphText('ئەو ژنە'),
    const SizedBox(height: 20),
    paragraphText('کەواتە لە سۆرانی دا:'),
    paragraphText('ئەم .... ە'),
    paragraphText('ئەو .... ە'),
    const SizedBox(height: 20),
    paragraphText('کرمانجیش بەهەمان شێوەیە، بەڵام جیاوازی یەکی کەمی هەیە:'),
    NewWord(text1: 'ڤی ... ی'),
    NewWord(text1: 'وی ... ی'),
    NewWord(text1: 'ڤێ ... ێ'),
    NewWord(text1: 'وێ ... ێ'),
    const SizedBox(height: 20),
    KurmanjiExample(
      fontWeight: FontWeight.bold,
      text1: 'ڤێ ',
      text2: 'گول',
      text3: 'ێ',
      color1: Colors.green,
      color3: Colors.green,
    ),
    SoraniExample(
      text1: 'ئەم ',
      text2: 'گوڵ',
      text3: 'ە',
      color1: Colors.green,
      color3: Colors.green,
    ),
    KurmanjiExample(
      text1: 'ئەز ',
      text2: 'وی ',
      text3: 'مرۆڤ',
      text4: 'ی ',
      text5: 'دبینم',
      color2: Colors.green,
      color4: Colors.green,
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'من ',
      text2: 'ئەو ',
      text3: 'پیاو',
      text4: 'ە ',
      text5: 'دەبینم',
      color2: Colors.green,
      color4: Colors.green,
    ),
    const SizedBox(height: 20),
    paragraphText('بۆ کۆ هەردوو ڕەگەز وەک یەکە:'),
    NewWord(
      text1: 'ڤان ... ان',
      text2: 'ئەمان',
    ),
    NewWord(
      text1: 'وان ... ان',
      text2: 'ئەوان',
    ),
    const SizedBox(height: 20),
    KurmanjiExample(
      text1: 'ئەز ',
      text2: 'ڤان ',
      text3: 'ئوتومبێل',
      text4: 'ان ',
      text5: 'دکرم',
      color2: Colors.green,
      color4: Colors.green,
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'من ',
      text2: 'ئەو ',
      text3: 'ئوتومبێل',
      text4: 'انە ',
      text5: 'دەکڕم',
      color2: Colors.green,
      color4: Colors.green,
    ),
    KurmanjiExample(
      text1: 'ئەز ',
      text2: 'وان ',
      text3: 'مرۆڤ',
      text4: 'ان ',
      text5: 'دبینم',
      color2: Colors.green,
      color4: Colors.green,
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'من ',
      text2: 'ئەو ',
      text3: 'پیاو',
      text4: 'انە ',
      text5: 'دەبینم',
      color2: Colors.green,
      color4: Colors.green,
    ),
  ],
);
