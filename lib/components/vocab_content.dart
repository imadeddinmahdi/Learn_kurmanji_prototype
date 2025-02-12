import 'package:flutter/material.dart';
import 'word_style.dart';

final List<Widget> vocabNo = [
  lesson0Vocab,
  lesson1Vocab,
  lesson2Vocab,
  lesson3Vocab,
  lesson4Vocab,
  lesson5Vocab,
];

final lesson0Vocab = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    const SizedBox(
      height: 40,
    ),
    paragraphText('لەم وانەیەدا حەوت وشەی زۆر گرنگ فێردەبین کە تەواو جیاوازن لەگەڵ زمانی کوردی سۆرانیدا. زانینی ئەم چەند وشەیە تێگەیشتنت بۆ زمانی کوردی کرمانجی زۆر زیاد دەکات، بۆیە زۆر بە گرنگییەوە تەماشای ئەم چەند وشەیە بکە.'),
    vocab(text1: 'ژیی', text2: 'هەروەها'),
    KurmanjiExample(
      text1: 'ناڤێ تە ئەحمەدە ؟ ناڤێ من ژیی ئەحمەدە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(text1: 'ناوی تۆ ئەحمەدە؟ ناوی  منیش ئەحمەدە'),
    KurmanjiExample(
      text1: 'ماڵبەتا  نێرگز ژیی سپاسێ حکوماتا هەرێمی دکەن',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(text1: 'عایلەی نێرگزیش سوپاسی حکومەتی هەرێم دەکەن'),
    vocab(text1: 'دڤێ', text2: 'دەبێ، دەبێت'),
    noteText('تێبینی : هەندێک دەڤەر و ناوچە "دڤێت" بەکاردەهێنن'),
    KurmanjiExample(
      text1: 'دڤێ ئەز بچم',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'دەبێت من بڕۆم',
    ),
    KurmanjiExample(
      text1: 'ئەز دڤێ پێشمەرگە بم  ، پێشمەرگەی کوردستانێ',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'من دەبێت پێشمەرگە بم ، پێشمەرگەی کوردستان',
    ),
    vocab(text1: 'لێ', text2: 'بەڵام'),
    KurmanjiExample(
      text1: 'ئەز گۆشت ناخوم ، لێ  ئەحمەد دخوە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'من گۆشت ناخۆم ، بەڵام ئەحمەد دەخوات',
    ),
    vocab(text1: 'پڕ', text2: 'زۆر، فرە'),
    KurmanjiExample(
      text1: 'برازیل وەلاتێکی پڕ مەزنە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'بەڕازیل وڵاتێکی زۆر مەزنە (گەورەیە)',
    ),
    KurmanjiExample(
      text1: 'ئەو مرۆڤەکە پڕ بێدەنگە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەو مرۆڤێکی (کەسێکی) زۆر بێدەنگە',
    ),
    vocab(text1: 'ژ', text2: 'لە، بۆ'),
    noteText('وشەیەکی زۆر زۆر گرنگە، بە چەندین شێوە بەکاردێت، بەزۆری بە مانای "لە" دێت ، بە واتای "بۆ" ش دێت. بۆ نموونە "ژ بۆ تۆ = لە بۆ تۆ یان بۆ تۆ"'),
    KurmanjiExample(
      text1: 'ئەو ژ مال و حاڵێ خوێ پڕ رازی یە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەو لە ماڵ و حاڵی خۆی زۆر ڕازی یە',
    ),
    KurmanjiExample(
      text1: 'چەندین ساڵ ژ وان دوور بوو',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'چەندین ساڵ لە ئەوان دوور بوو',
    ),
    KurmanjiExample(
      text1: 'ئەم نامە ژ بۆ ئەحمەدە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەم نامە بۆ ئەحمەدە (ژ بۆ = لە بۆ)',
    ),
    KurmanjiExample(
      text1: 'ژ بەرکو',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'لەبەرئەوەی',
    ),
    KurmanjiExample(
      text1: 'ئەز تەنێ شەش ساڵان ژ تە مەزنترم',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'من تەنها شەش ساڵ لە تۆ گەورەترم',
    ),
    vocab(text1: 'مینا، وەکی', text2: 'وەک'),
    KurmanjiExample(
      text1: 'ئەز ژیی مینا تە خوێندکارم',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'منیش وەک تۆ خوێندکارم',
    ),
    KurmanjiExample(
      text1: 'کەس نەبوو مینا تە یار',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'کەس نەبوو وەک تۆ یار',
    ),
    vocab(text1: 'خوەدی', text2: 'خاوەن'),
    KurmanjiExample(
      text1: 'جیهان هەموو دەبێتە خاوەنی ئینتەرنێت',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'جهان تەڤ دبە خوەدی ئینتەرنێت',
    ),
    KurmanjiExample(
      text1: 'هەرکەس خاوەنی مافی ژیان و ئازادی خۆیەتی',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'هەرکەس خوەدی مافی ژیان و ئازادی خوەیە',
    ),
  ],
);

final lesson1Vocab = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    const SizedBox(
      height: 40,
    ),
    paragraphText('لەم وانەیەدا حەوت وشەی زۆر گرنگ فێردەبین کە تەواو جیاوازن لەگەڵ زمانی کوردی سۆرانیدا. زانینی ئەم چەند وشەیە تێگەیشتنت بۆ زمانی کوردی کرمانجی زۆر زیاد دەکات، بۆیە زۆر بە گرنگییەوە تەماشای ئەم چەند وشەیە بکە.'),
    vocab(text1: 'ژیی', text2: 'هەروەها'),
    KurmanjiExample(
      text1: 'ناڤێ تە ژیی ئەحمەدە ؟ ناڤێ من ژیی ئەحمەدە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(text1: 'ناوی تۆ ئەحمەدە؟ ناوی  منیش ئەحمەدە'),
    KurmanjiExample(
      text1: 'ماڵبەتا  نێرگز ژیی سپاسێ حکوماتا هەرێمی دکەن',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(text1: 'عایلەی نێرگزیش سوپاسی حکومەتی هەرێم دەکەن'),
    vocab(text1: 'دڤێ', text2: 'دەبێ، دەبێت'),
    noteText('تێبینی : هەندێک دەڤەر و ناوچە "دڤێت" بەکاردەهێنن'),
    KurmanjiExample(
      text1: 'دڤێ ئەز بچم',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'دەبێت من بڕۆم',
    ),
    KurmanjiExample(
      text1: 'ئەز دڤێ پێشمەرگە بم  ، پێشمەرگەی کوردستانێ',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'من دەبێت پێشمەرگە بم ، پێشمەرگەی کوردستان',
    ),
    vocab(text1: 'لێ', text2: 'بەڵام'),
    KurmanjiExample(
      text1: 'ئەز گۆشت ناخوم ، لێ  ئەحمەد دخوە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'من گۆشت ناخۆم ، بەڵام ئەحمەد دەخوات',
    ),
    vocab(text1: 'پڕ', text2: 'زۆر، فرە'),
    KurmanjiExample(
      text1: 'برازیل وەلاتێکی پڕ مەزنە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'بەڕازیل وڵاتێکی زۆر مەزنە (گەورەیە)',
    ),
    KurmanjiExample(
      text1: 'ئەو مرۆڤەکە پڕ بێدەنگە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەو مرۆڤێکی (کەسێکی) زۆر بێدەنگە',
    ),
    vocab(text1: 'ژ', text2: 'لە، بۆ'),
    noteText('وشەیەکی زۆر زۆر گرنگە، بە چەندین شێوە بەکاردێت، بەزۆری بە مانای "لە" دێت ، بە واتای "بۆ" ش دێت. بۆ نموونە "ژ بۆ تۆ = لە بۆ تۆ یان بۆ تۆ"'),
    KurmanjiExample(
      text1: 'ئەو ژ مال و حاڵێ خوێ پڕ رازی یە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەو لە ماڵ و حاڵی خۆی زۆر ڕازی یە',
    ),
    KurmanjiExample(
      text1: 'چەندین ساڵ ژ وان دوور بوو',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'چەندین ساڵ لە ئەوان دوور بوو',
    ),
    KurmanjiExample(
      text1: 'ئەم نامە ژ بۆ ئەحمەدە',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەم نامە بۆ ئەحمەدە (ژ بۆ = لە بۆ)',
    ),
    KurmanjiExample(
      text1: 'ژ بەرکو',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'لەبەرئەوەی',
    ),
    KurmanjiExample(
      text1: 'ئەز تەنێ شەش ساڵان ژ تە مەزنترم',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'من تەنها شەش ساڵ لە تۆ گەورەترم',
    ),
    vocab(text1: 'مینا، وەکی', text2: 'وەک'),
    KurmanjiExample(
      text1: 'ئەز ژیی مینا تە خوێندکارم',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'منیش وەک تۆ خوێندکارم',
    ),
    KurmanjiExample(
      text1: 'کەس نەبوو مینا تە یار',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'کەس نەبوو وەک تۆ یار',
    ),
    vocab(text1: 'خوەدی', text2: 'خاوەن'),
    KurmanjiExample(
      text1: 'جیهان هەموو دەبێتە خاوەنی ئینتەرنێت',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'جهان تەڤ دبە خوەدی ئینتەرنێت',
    ),
    KurmanjiExample(
      text1: 'هەرکەس خاوەنی مافی ژیان و ئازادی خۆیەتی',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'هەرکەس خوەدی مافی ژیان و ئازادی خوەیە',
    ),
  ],
);

final lesson2Vocab = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    const SizedBox(
      height: 40,
    ),
    paragraphText('لەم وانەیەدا فێری وشەکانی پرسیار کردن دەبین'),
    vocab(text1: 'چ', text2: 'چی ، چ'),
    KurmanjiExample(
      text1: 'ناڤێ تە چ یە؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ناوی تۆ چی یە',
    ),
    vocab(text1: 'چەند', text2: 'چەند'),
    KurmanjiExample(
      text1: 'تو چەند ساڵی یی',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'تۆ چەند ساڵی (تەمەنت چەندە؟)',
    ),
    vocab(text1: 'کێ', text2: 'کێ'),
    vocab(text1: 'کیژان', text2: 'کام'),
    KurmanjiExample(
      text1: 'ئیرۆ کیژان ڕۆژە؟ سێ شەم؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەمڕۆ کام ڕۆژەیە؟ سێ شەممە؟',
    ),
    vocab(text1: 'چاوا', text2: 'چۆن'),
    KurmanjiExample(
      text1: 'چاوایی؟ باشی؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'چۆنی؟ باشی؟',
    ),
    KurmanjiExample(
      text1: 'پەنجەرە چاوا شکەست؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'پەنجەرەکە چۆن شکا؟',
    ),
    vocab(text1: 'کو دەر', text2: 'کوێ'),
    vocab(text1: 'ل کو دەر', text2: 'لە کوێ'),
    KurmanjiExample(
      text1: 'دایکا تە ل کو دەرەیە؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'دایکی تۆ لە کوێ یە؟',
    ),
    KurmanjiExample(
      text1: 'هەڤاڵێ تە ل کو دەرەیە؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'هاوڕێکەی تۆ لە کوێ یە؟',
    ),
    KurmanjiExample(
      text1: 'کامێرە ل کو دەرەیە؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'کامێرەکە لە کوێ یە؟',
    ),
    vocab(text1: 'کەنگی، کەی', text2: 'کەی'),
    KurmanjiExample(
      text1: 'ئەحمەد کەنگی چوو؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەحمەد کەی چوو؟',
    ),
    KurmanjiExample(
      text1: 'ئەو کەنگی گهشت؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەو کەی گەیشت؟',
    ),
    noteText('لە کوردی کرمانجی دا هەردوو وشەی کەنگی و کەی بە واتای کەی دێت. باشتر وایە هەردوو وشەکەی فێرببین.'),
    vocab(text1: 'چما، بۆچ', text2: 'بۆچی'),
    KurmanjiExample(
      text1: 'ئەو چما چوو؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'ئەو بۆچی چوو؟',
    ),
    KurmanjiExample(
      text1: 'تو چما دگری؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'تۆ بۆچی دەگریت؟',
    ),
    noteText('لە کوردی کرمانجی دا هەردوو وشەی چما و بۆچ بە واتای بۆچی دێت. باشتر وایە هەردوو وشەکەی فێرببین.'),
    vocab(text1: 'چ قاس', text2: 'چەند'),
    vocab(text1: 'ب چ قاس', text2: 'بەچەند'),
    KurmanjiExample(
      text1: 'کامێرە ب چ قاس بوو؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'کامێرەکە بەچەند بوو؟',
    ),
    noteText('لە کوردی کرمانجی دا، وشەی چەندیش هەر بە واتای چەند دێت. چ قاس زیاتر بۆ پرسیارکردنە لەبارەی نرخی شتێک. لە زۆربەی حاڵەتەکانی تردا ئەتوانین وشەی چەند بەکاربێنین. نموونە: '),
    KurmanjiExample(
      text1: 'چەند سال',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'چەند ساڵ',
    ),
    KurmanjiExample(
      text1: 'ساعەت چەندە؟',
      fontWeight: FontWeight.bold,
    ),
    SoraniExample(
      text1: 'سەعات چەندە؟',
    ),
  ],
);

final lesson3Vocab = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    const SizedBox(height: 40),
    paragraphText('لەم وانەیەدا فێری ئیزافە دەبین لە زمانی کرمانجیدا. ئیزافە بۆ دروستکردنی پەیوەندی نێوان وشەکان بەکاردێت.'),
    const SizedBox(height: 20),
    const VocabCard(
      kurmanji: 'mal',
      kurdish: 'ماڵ',
      english: 'house',
    ),
    const VocabCard(
      kurmanji: 'mala min',
      kurdish: 'ماڵی من',
      english: 'my house',
    ),
    const VocabCard(
      kurmanji: 'kitêb',
      kurdish: 'کتێب',
      english: 'book',
    ),
    const VocabCard(
      kurmanji: 'kitêba te',
      kurdish: 'کتێبی تۆ',
      english: 'your book',
    ),
    const VocabCard(
      kurmanji: 'nav',
      kurdish: 'ناو',
      english: 'name',
    ),
    const VocabCard(
      kurmanji: 'navê wî',
      kurdish: 'ناوی ئەو',
      english: 'his name',
    ),
    const SizedBox(height: 100),
  ],
);

final lesson4Vocab = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    const SizedBox(height: 40),
    paragraphText('لەم وانەیەدا فێری کاتی داهاتوو دەبین لە زمانی کرمانجیدا. چۆن باسی کارێک بکەین کە لە داهاتوودا ئەنجامی دەدەین.'),
    const SizedBox(height: 20),
    const VocabCard(
      kurmanji: 'dê',
      kurdish: 'دە',
      english: 'will (future marker)',
    ),
    const VocabCard(
      kurmanji: 'ez dê bêm',
      kurdish: 'من دێم',
      english: 'I will come',
    ),
    const VocabCard(
      kurmanji: 'tu dê biçî',
      kurdish: 'تۆ دەڕۆیت',
      english: 'you will go',
    ),
    const VocabCard(
      kurmanji: 'ew dê bixwe',
      kurdish: 'ئەو دەخوات',
      english: 'he/she will eat',
    ),
    const VocabCard(
      kurmanji: 'em dê bikin',
      kurdish: 'ئێمە دەکەین',
      english: 'we will do',
    ),
    const SizedBox(height: 100),
  ],
);

final lesson5Vocab = Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [
    const SizedBox(height: 40),
    paragraphText('لەم وانەیەدا فێری چەند وشەیەکی گرنگ دەبین کە پەیوەندییان بە کاتەوە هەیە.'),
    const SizedBox(height: 20),
    const VocabCard(
      kurmanji: 'îro',
      kurdish: 'ئەمڕۆ',
      english: 'today',
    ),
    const VocabCard(
      kurmanji: 'sibe',
      kurdish: 'سبەی',
      english: 'tomorrow',
    ),
    const VocabCard(
      kurmanji: 'duhî',
      kurdish: 'دوێنێ',
      english: 'yesterday',
    ),
    const VocabCard(
      kurmanji: 'niha',
      kurdish: 'ئێستا',
      english: 'now',
    ),
    const VocabCard(
      kurmanji: 'paşê',
      kurdish: 'دواتر',
      english: 'later',
    ),
    const SizedBox(height: 100),
  ],
);
