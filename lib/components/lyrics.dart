import 'package:flutter/material.dart';
import 'package:learn_kurmanji_2022/components/lyric_class.dart';

//notes:
//try to find and replace all the errors quickly
//when importing lyrics from the other file

const songNewWordColor = Color(0xffCEFF7E);

// final List songLyrics = [kurdistanL, peshmergaL, felekL, nasrinL, agirL, hizirL, caneL, chawRashL];

getLyrics(int index) {
  switch (index) {
    case 0:
      return kurdistanL();
    case 1:
      return peshmergaL();
    case 2:
      return felekL();
    case 3:
      return nasrinL();
    case 4:
      return agirL();
    case 5:
      return hizirL();
    case 6:
      return caneL();
    case 7:
      return chawRashL();
  }
}

//Complete
chawRashL() => Column(
      children: [
        lyricBigText(
          text: 'چاڤڕەشا من',
        ),
        singerName('شاهێ بەدۆ'),
        const SizedBox(height: 50),

        //break
        lyricSmallText(
          text: 'Li pey te pir geriyam',
        ),
        KurmanjiLyricText(
          text1: 'ل پەی تە',
          text2: ' پڕ گەریام',
          color1: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'زۆر گەڕام ',
          text2: 'بەدوای تۆ',
          color1: songNewWordColor,
        ),

        //break
        lyricSmallText(
          text: 'Min te pirsi li her cihyan',
        ),
        KurmanjiLyricText(text1: 'من تە پرسی ل هەر جهیان'),
        SoraniLyricText(text1: 'من پرسیاری تۆم ئەکرد لەهەموو جێیەک'),

        //break
        lyricSmallText(
          text: 'Wek kewa ser baniya',
        ),
        KurmanjiLyricText(text1: 'وەک کەوا سەر بانیا'),
        SoraniLyricText(text1: 'وەک کەوی سەر سەربان'),

        //break
        lyricSmallText(
          text: 'Çavreşamın',
        ),
        KurmanjiLyricText(text1: 'چاڤڕەشا من'),
        SoraniLyricText(text1: 'چاوڕەشی من'),

        oneLine(),
        lyricSmallText(
          text: 'Li pey te pir geriyam',
        ),
        KurmanjiLyricText(
          text1: 'ل پەی تە',
          text2: ' پڕ گەریام',
          color1: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'زۆر گەڕام ',
          text2: 'بەدوای تۆ',
          color1: songNewWordColor,
        ),

        //break
        lyricSmallText(
          text: 'Min te pirsi li her cihyan',
        ),
        KurmanjiLyricText(text1: 'من تە پرسی ل هەر جهیان'),
        SoraniLyricText(text1: 'من پرسیاری تۆم ئەکرد لەهەموو جێیەک'),

        //break
        lyricSmallText(
          text: 'Wek kewa ser baniya',
        ),
        KurmanjiLyricText(text1: 'وەک کەوا سەر بانیا'),
        SoraniLyricText(text1: 'وەک کەوی سەر سەربان'),

        //break
        lyricSmallText(
          text: 'Çavreşamın',
        ),
        KurmanjiLyricText(text1: 'چاڤڕەشا من'),
        SoraniLyricText(text1: 'چاوڕەشی من'),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Çavreşamin were ba min',
        ),
        KurmanjiLyricText(text1: 'چاوڕەشا من وەرە با من'),
        SoraniLyricText(text1: 'چاوەڕەشی من وەرەم بۆلای من'),

        //break
        lyricSmallText(
          text: 'Ez nexweşim tü sebeba min',
        ),
        KurmanjiLyricText(text1: 'ئەز نەخوەشم تو سەبەبامن'),
        SoraniLyricText(text1: 'من نەخۆشم تۆ سەبەبی منی'),

        oneLine(),
        lyricSmallText(
          text: 'Çavreşamin were ba min',
        ),
        KurmanjiLyricText(text1: 'چاوڕەشا من وەرە با من'),
        SoraniLyricText(text1: 'چاوەڕەشی من وەرەم بۆلای من'),

        //break
        lyricSmallText(
          text: 'Ez bêhalim tü sebeba min',
        ),
        KurmanjiLyricText(text1: 'ئەز بێحاڵم تو سەبەبامن'),
        SoraniLyricText(text1: 'من بێحاڵم تۆ سەبەبی منی'),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Tü pir nazik delali',
        ),
        KurmanjiLyricText(
          text1: 'تو  پڕ نازک',
          text2: ' دەلالی',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'تۆ  زۆر ناسک و',
          text2: ' جوانی',
          color2: songNewWordColor,
        ),

        //break
        lyricSmallText(
          text: 'Li nava vi dili de',
        ),
        KurmanjiLyricText(
          text1: 'ل ناڤا',
          text2: ' ڤی ',
          text3: 'دلی دا',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'لەناو',
          text2: ' ئەم ',
          text3: 'دڵەدا',
          color2: songNewWordColor,
        ),

        //break
        lyricSmallText(
          text: 'Birinek bê dermani',
        ),
        KurmanjiLyricText(text1: 'برینەک بێ دەرمانی'),
        SoraniLyricText(text1: 'برینێکی بێ دەرمانی'),

        //break
        lyricSmallText(
          text: 'Li vi canê de',
        ),
        KurmanjiLyricText(text1: 'ل ڤی جانێ دا'),
        SoraniLyricText(text1: 'لە ئەم لاشەدا'),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Tü pir nazik delali',
        ),
        KurmanjiLyricText(
          text1: 'تو  پڕ نازک',
          text2: ' دەلالی',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'تۆ  زۆر ناسک و',
          text2: ' جوانی',
          color2: songNewWordColor,
        ),

        //break
        lyricSmallText(
          text: 'Li nava vi dili de',
        ),
        KurmanjiLyricText(
          text1: 'ل ناڤا',
          text2: ' ڤی ',
          text3: 'دلی دا',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'لەناو',
          text2: ' ئەم ',
          text3: 'دڵەدا',
          color2: songNewWordColor,
        ),

        //break
        lyricSmallText(
          text: 'Birinek bê dermani',
        ),
        KurmanjiLyricText(text1: 'برینەک بێ دەرمانی'),
        SoraniLyricText(text1: 'برینێکی بێ دەرمانی'),

        //break
        lyricSmallText(
          text: 'Li vi canê de',
        ),
        KurmanjiLyricText(text1: 'ل ڤی جانێ دا'),
        SoraniLyricText(text1: 'لە ئەم لاشەدا'),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Çavreşamin were ba min',
        ),
        KurmanjiLyricText(text1: 'چاوڕەشا من وەرە با من'),
        SoraniLyricText(text1: 'چاوەڕەشی من وەرەم بۆلای من'),

        //break
        lyricSmallText(
          text: 'Ez nexweşim tü sebeba min',
        ),
        KurmanjiLyricText(text1: 'ئەز نەخوەشم تو سەبەبامن'),
        SoraniLyricText(text1: 'من نەخۆشم تۆ سەبەبی منی'),

        oneLine(),
        lyricSmallText(
          text: 'Çavreşamin were ba min',
        ),
        KurmanjiLyricText(text1: 'چاوڕەشا من وەرە با من'),
        SoraniLyricText(text1: 'چاوەڕەشی من وەرەم بۆلای من'),

        //break
        lyricSmallText(
          text: 'Ez bêhalim tü sebeba min',
        ),
        KurmanjiLyricText(text1: 'ئەز بێحاڵم تو سەبەبامن'),
        SoraniLyricText(text1: 'من بێحاڵم تۆ سەبەبی منی'),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Min navê te bi xwina xwe',
        ),
        KurmanjiLyricText(text1: 'من ناڤا تە ب خوینا خوە'),
        SoraniLyricText(text1: 'من ناوی تۆم بەخوێنی خۆم'),

        //break
        lyricSmallText(
          text: 'Nivisande vi dili',
        ),
        KurmanjiLyricText(text1: 'نڤیساندە ڤ دلی'),
        SoraniLyricText(text1: 'نوسیوە لەم دڵەدا'),

        //break
        lyricSmallText(
          text: 'Ne zimanên careki',
        ),
        KurmanjiLyricText(text1: 'نە زمانێن جارێکی'),
        SoraniLyricText(text1: 'نەک تەنها بە زمانێک یەکجار'),

        //break
        lyricSmallText(
          text: 'Çavreşamin',
        ),
        KurmanjiLyricText(text1: 'چاڤڕەشامن'),
        SoraniLyricText(text1: 'چاوڕەشی من'),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Çavreşamin were ba min',
        ),
        KurmanjiLyricText(text1: 'چاوڕەشا من وەرە با من'),
        SoraniLyricText(text1: 'چاوەڕەشی من وەرەم بۆلای من'),

        //break
        lyricSmallText(
          text: 'Ez nexweşim tü sebeba min',
        ),
        KurmanjiLyricText(text1: 'ئەز نەخوەشم تو سەبەبامن'),
        SoraniLyricText(text1: 'من نەخۆشم تۆ سەبەبی منی'),

        oneLine(),
        lyricSmallText(
          text: 'Çavreşamin were ba min',
        ),
        KurmanjiLyricText(text1: 'چاوڕەشا من وەرە با من'),
        SoraniLyricText(text1: 'چاوەڕەشی من وەرەم بۆلای من'),

        //break
        lyricSmallText(
          text: 'Ez bêhalim tü sebeba min',
        ),
        KurmanjiLyricText(text1: 'ئەز بێحاڵم تو سەبەبامن'),
        SoraniLyricText(text1: 'من بێحاڵم تۆ سەبەبی منی'),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Min navê te bi xwina xwe',
        ),
        KurmanjiLyricText(text1: 'من ناڤا تە ب خوینا خوە'),
        SoraniLyricText(text1: 'من ناوی تۆم بەخوێنی خۆم'),

        //break
        lyricSmallText(
          text: 'Nivisande vi dili',
        ),
        KurmanjiLyricText(text1: 'نڤیساندە ڤ دلی'),
        SoraniLyricText(text1: 'نوسیوە لەم دڵەدا'),

        //break
        lyricSmallText(
          text: 'Ne zimanên careki',
        ),
        KurmanjiLyricText(text1: 'نە زمانێن جارێکی'),
        SoraniLyricText(text1: 'نەک تەنها بە زمانێک یەکجار'),

        //break
        lyricSmallText(
          text: 'Çavreşamin',
        ),
        KurmanjiLyricText(text1: 'چاڤڕەشامن'),
        SoraniLyricText(text1: 'چاوڕەشی من'),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Çavreşamin were ba min',
        ),
        KurmanjiLyricText(text1: 'چاوڕەشا من وەرە با من'),
        SoraniLyricText(text1: 'چاوەڕەشی من وەرەم بۆلای من'),

        //break
        lyricSmallText(
          text: 'Ez nexweşim tü sebeba min',
        ),
        KurmanjiLyricText(text1: 'ئەز نەخوەشم تو سەبەبامن'),
        SoraniLyricText(text1: 'من نەخۆشم تۆ سەبەبی منی'),

        oneLine(),
        lyricSmallText(
          text: 'Çavreşamin were ba min',
        ),
        KurmanjiLyricText(text1: 'چاوڕەشا من وەرە با من'),
        SoraniLyricText(text1: 'چاوەڕەشی من وەرەم بۆلای من'),

        //break
        lyricSmallText(
          text: 'Ez bêhalim tü sebeba min',
        ),
        KurmanjiLyricText(text1: 'ئەز بێحاڵم تو سەبەبامن'),
        SoraniLyricText(text1: 'من بێحاڵم تۆ سەبەبی منی'),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Min navê te bi xwina xwe',
        ),
        KurmanjiLyricText(text1: 'من ناڤا تە ب خوینا خوە'),
        SoraniLyricText(text1: 'من ناوی تۆم بەخوێنی خۆم'),

        //break
        lyricSmallText(
          text: 'Nivisande vi dili',
        ),
        KurmanjiLyricText(text1: 'نڤیساندە ڤ دلی'),
        SoraniLyricText(text1: 'نوسیوە لەم دڵەدا'),

        //break
        lyricSmallText(
          text: 'Ne zimanên careki',
        ),
        KurmanjiLyricText(text1: 'نە زمانێن جارێکی'),
        SoraniLyricText(text1: 'نەک تەنها بە زمانێک یەکجار'),

        //break
        lyricSmallText(
          text: 'Çavreşamin',
        ),
        KurmanjiLyricText(text1: 'چاڤڕەشامن'),
        SoraniLyricText(text1: 'چاوڕەشی من'),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Çavreşamin were ba min',
        ),
        KurmanjiLyricText(text1: 'چاوڕەشا من وەرە با من'),
        SoraniLyricText(text1: 'چاوەڕەشی من وەرەم بۆلای من'),

        //break
        lyricSmallText(
          text: 'Ez nexweşim tü sebeba min',
        ),
        KurmanjiLyricText(text1: 'ئەز نەخوەشم تو سەبەبامن'),
        SoraniLyricText(text1: 'من نەخۆشم تۆ سەبەبی منی'),

        oneLine(),
        lyricSmallText(
          text: 'Çavreşamin were ba min',
        ),
        KurmanjiLyricText(text1: 'چاوڕەشا من وەرە با من'),
        SoraniLyricText(text1: 'چاوەڕەشی من وەرەم بۆلای من'),

        //break
        lyricSmallText(
          text: 'Ez bêhalim tü sebeba min',
        ),
        KurmanjiLyricText(text1: 'ئەز بێحاڵم تو سەبەبامن'),
        SoraniLyricText(text1: 'من بێحاڵم تۆ سەبەبی منی'),

        const SizedBox(height: 40),
      ],
    );

//Complete
caneL() => Column(
      children: [
        lyricBigText(
          text: 'جانە',
        ),
        singerName('گروپی سێ برا'),
        const SizedBox(height: 50),
        lyricSmallText(
          text: 'Xwezî li me vegeriyana lê lê',
        ),
        KurmanjiLyricText(
          text1: 'خوەزی',
          text2: ' ل مە ',
          text3: 'ڤەگەڕیانا  لێ لێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'خۆزگە ئەگەڕانەوە',
          text2: ' بۆمان  ',
          text3: 'لێ لێ',
          color2: songNewWordColor,
        ),

        //break
        lyricSmallText(
          text: 'Ew rojê me yê berê canê',
        ),
        KurmanjiLyricText(
          text1: 'ئەو ڕۆژێ مە یە',
          text2: ' بەرێ ',
          text3: 'جانێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'ئەو ڕۆژانەی',
          text2: ' پێشوومان ',
          text3: 'گیانە',
          color2: songNewWordColor,
        ),

        oneLine(),
        lyricSmallText(
          text: 'Xwezî li me vegeriyana lê lê',
        ),
        KurmanjiLyricText(text1: 'خوەزی ل مە ڤەگەڕیانا  لێ لێ'),
        SoraniLyricText(text1: 'خۆزگە ئەگەڕانەوە بۆمان  لێ لێ'),

        //break
        lyricSmallText(
          text: 'Ew rojê me yê berê canê',
        ),
        KurmanjiLyricText(text1: 'ئەو ڕۆژێ مە یە بەرێ جانێ'),
        SoraniLyricText(text1: 'ئە ڕۆژانەی پێشوومان گیانە'),
        const SizedBox(height: 40),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Mi digo tirsim te nebînim lê lê',
        ),
        KurmanjiLyricText(text1: 'من دگۆ ترسم تە نەبینم لێ لێ'),
        SoraniLyricText(text1: 'من دەمگوت ئەترسم تۆ نەبینم لێ لێ'),
        //break
        lyricSmallText(
          text: 'Te digo Xwedê mezin e canê',
        ),
        KurmanjiLyricText(text1: 'تە دگۆ خوەدێ مەزنە جانێ'),
        SoraniLyricText(text1: 'تۆ دەتگوت خودا مەزنە گیانە'),
        //break
        lyricSmallText(
          text: 'Te digo Xwedê mezin e canê',
        ),
        KurmanjiLyricText(text1: 'تە دگۆ خوەدێ مەزنە جانێ'),
        SoraniLyricText(text1: 'تۆ دەتگوت خودا مەزنە گیانە'),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Mi digo tirsim te nebînim lê lê',
        ),
        KurmanjiLyricText(text1: 'من دگۆ ترسم تە نەبینم لێ لێ'),
        SoraniLyricText(text1: 'من دەمگوت ئەترسم تۆ نەبینم لێ لێ'),
        //break
        lyricSmallText(
          text: 'Te digo sala benda te me canê',
        ),
        KurmanjiLyricText(
          text1: 'تە دگۆ سال',
          text2: ' بەندا ',
          text3: 'تە مە جانێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'تۆ دەتگوت ساڵانە',
          text2: ' چاوەڕێی ',
          text3: 'تۆم گیانە',
          color2: songNewWordColor,
        ),
        //break
        lyricSmallText(
          text: 'Dimirim ji axê ra ma canê',
        ),
        KurmanjiLyricText(text1: 'دمرم ژ ئاخێ را مە جانێ'),
        SoraniLyricText(text1: 'دەمرم لە ئاخدا گیانە'),
        oneLine(),
        lyricSmallText(
          text: 'Xwezî li me vegeriyana lê lê',
        ),
        KurmanjiLyricText(text1: 'خوەزی ل مە ڤەگەڕیانا  لێ لێ'),
        SoraniLyricText(text1: 'خۆزگە ئەگەڕانەوە بۆمان  لێ لێ'),

        //break
        lyricSmallText(
          text: 'Ew rojê me yê berê canê',
        ),
        KurmanjiLyricText(text1: 'ئەو ڕۆژێ مە یە بەرێ جانێ'),
        SoraniLyricText(text1: 'ئە ڕۆژانەی پێشوومان گیانە'),

        oneLine(),
        lyricSmallText(
          text: 'Xwezî li me vegeriyana lê lê',
        ),
        KurmanjiLyricText(text1: 'خوەزی ل مە ڤەگەڕیانا  لێ لێ'),
        SoraniLyricText(text1: 'خۆزگە ئەگەڕانەوە بۆمان  لێ لێ'),

        //break
        lyricSmallText(
          text: 'Ew rojê me yê berê canê',
        ),
        KurmanjiLyricText(text1: 'ئەو ڕۆژێ مە یە بەرێ جانێ'),
        SoraniLyricText(text1: 'ئە ڕۆژانەی پێشوومان گیانە'),
        oneLine(),

        //break
        lyricSmallText(
          text: 'Mi digo tirsim te nebînim lê lê',
        ),
        KurmanjiLyricText(text1: 'من دگۆ ترسم تە نەبینم لێ لێ'),
        SoraniLyricText(text1: 'من دەمگوت ئەترسم تۆ نەبینم لێ لێ'),
        //break
        lyricSmallText(
          text: 'Te digo Xwedê mezin e canê',
        ),
        KurmanjiLyricText(text1: 'تە دگۆ خوەدێ مەزنە جانێ'),
        SoraniLyricText(text1: 'تۆ دەتگوت خودا مەزنە گیانە'),
        //break
        lyricSmallText(
          text: 'Te digo Xwedê mezin e canê',
        ),
        KurmanjiLyricText(text1: 'تە دگۆ خوەدێ مەزنە جانێ'),
        SoraniLyricText(text1: 'تۆ دەتگوت خودا مەزنە گیانە'),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Mi digo tirsim te nebînim lê lê',
        ),
        KurmanjiLyricText(text1: 'من دگۆ ترسم تە نەبینم لێ لێ'),
        SoraniLyricText(text1: 'من دەمگوت ئەترسم تۆ نەبینم لێ لێ'),
        //break
        lyricSmallText(
          text: 'Te digo sala benda te me canê',
        ),
        KurmanjiLyricText(
          text1: 'تە دگۆ سال بەندا تە مە جانێ',
          text2: ' تە مە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'تۆ دەتگوت ساڵانە چاوەڕێی تۆم گیانە',
          text2: ' تۆم گیانە',
          color2: songNewWordColor,
        ),
        //break
        lyricSmallText(
          text: 'Dimirim ji axê ra ma canê',
        ),
        KurmanjiLyricText(text1: 'دمرم ژ ئاخێ را مە جانێ'),
        SoraniLyricText(text1: 'دەمرم لە ئاخدا گیانە'),
        const SizedBox(height: 40),
      ],
    );

//Complete
agirL() => Column(
      children: [
        lyricBigText(
          text: 'ئاگر کەتیە',
        ),
        singerName('زەکەریا عەبدوڵلا'),
        const SizedBox(height: 50),

        //break
        lyricSmallText(
          text: 'agir ketye dilê min',
        ),
        KurmanjiLyricText(text1: 'ئاگر کەتیە دلێ من'),
        SoraniLyricText(text1: 'ئاگر کەوتووەتە دڵی من'),

        //break
        lyricSmallText(
          text: 'xew nakeve çavê min',
        ),
        KurmanjiLyricText(text1: 'خەو ناکەڤە چاڤێ من'),
        SoraniLyricText(text1: 'خەو ناکەوێتە چاوی من'),

        //break
        lyricSmallText(
          text: 'çima tu ji min dûr ketî',
        ),
        KurmanjiLyricText(
          text1: 'چما ',
          color1: songNewWordColor,
          text2: 'تو ژ من دوور کەتی',
        ),
        SoraniLyricText(
          text1: 'بۆچی ',
          color1: songNewWordColor,
          text2: 'تۆ لە من دوور کەوتی',
        ),

        //break
        lyricSmallText(
          text: 'bêje ronîya çavê min',
        ),
        KurmanjiLyricText(
          text1: 'بێژە ',
          text2: 'ڕۆنیا ',
          color2: songNewWordColor,
          text3: 'چاڤێ من',
        ),
        SoraniLyricText(
          text1: 'بێژە ',
          color2: songNewWordColor,
          text2: 'ڕووناکی ',
          text3: 'چاوی من',
        ),

        oneLine(),
        //break
        lyricSmallText(
          text: 'agir ketye dilê min',
        ),
        KurmanjiLyricText(text1: 'ئاگر کەتیە دلێ من'),
        SoraniLyricText(text1: 'ئاگر کەوتووەتە دڵی من'),

        //break
        lyricSmallText(
          text: 'xew nakeve çavê min',
        ),
        KurmanjiLyricText(text1: 'خەو ناکەڤە چاڤێ من'),
        SoraniLyricText(text1: 'خەو ناکەوێتە چاوی من'),

        //break
        lyricSmallText(
          text: 'çima tu ji min dûr ketî',
        ),
        KurmanjiLyricText(
          text1: 'چما',
          text2: ' تو ژ من دوور کەتی',
          color1: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'بۆچی',
          text2: ' تۆ لە من دوور کەوتی',
          color1: songNewWordColor,
        ),

        //break
        lyricSmallText(
          text: 'bêje ronîya çavê min',
        ),
        KurmanjiLyricText(
          text1: 'بێژە ',
          text2: 'ڕۆنیا ',
          color2: songNewWordColor,
          text3: 'چاڤێ من',
        ),
        SoraniLyricText(
          text1: 'بێژە ',
          color2: songNewWordColor,
          text2: 'ڕووناکی ',
          text3: 'چاوی من',
        ),

        oneLine(),

        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(
          text1: 'رندا ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'گەورا ',
          color3: songNewWordColor,
          text4: 'من',
        ),
        SoraniLyricText(
          text1: 'جوانەکەی ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'ڕەنگ سپی یەکەی ',
          color3: songNewWordColor,
          text4: 'من',
        ),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(
          text1: 'چەند سالە ئەز ',
          text2: 'ل هێڤیا',
          color2: songNewWordColor,
          text3: ' تە مە',
        ),
        SoraniLyricText(
          text1: 'چەند ساڵە من ',
          text2: 'بە تەمای ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(
          text1: 'لێلێ چەند ساڵە ئەز ',
          text2: 'ل بەندا ',
          color2: songNewWordColor,
          text3: 'تە مە',
        ),
        SoraniLyricText(
          text1: 'لێلێ چەند ساڵە من ',
          text2: 'لە چاوەڕوانی ',
          text3: 'تۆم',
        ),
        oneLine(),
        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(text1: 'رندا من، گەورا من'),
        SoraniLyricText(text1: 'جوانەکەی من، ڕەنگ سپی یەکەی من'),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(text1: 'چەند سالە ئەز ل هێڤیا تە مە'),
        SoraniLyricText(text1: 'چەند ساڵە من بە تەمای تۆم'),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(text1: 'لێلێ چەند ساڵە ئەز ل بەندا تە مە'),
        SoraniLyricText(text1: 'لێلێ چەند ساڵە من لە چاوەڕوانی تۆم'),

        //break
        oneLine(),

        lyricSmallText(
          text: 'Ew çi ax û nalîn e',
        ),
        KurmanjiLyricText(
          text1: 'ئەو چ ئاخ و نالینە',
        ),
        SoraniLyricText(
          text1: 'ئەوە چ ئاخ و ناڵینێکە',
        ),

        lyricSmallText(
          text: 'Dil şewitî, berf bîne',
        ),
        KurmanjiLyricText(
          text1: 'دل ',
          text2: 'شەوتی',
          color2: songNewWordColor,
          text3: '، بەرف بینە',
        ),
        SoraniLyricText(
          text1: 'دڵ ',
          text2: 'ئەسوتێت',
          color2: songNewWordColor,
          text3: '، بەفر بێنە',
        ),

        lyricSmallText(
          text: 'Tu bi xatirê xwe bikî',
        ),
        KurmanjiLyricText(
          text1: 'تو بخاترێ خوە بکی',
        ),
        SoraniLyricText(
          text1: 'تۆ بیکە بەخاتری خوا',
        ),

        lyricSmallText(
          text: 'Ne bêje yarê dîn e',
        ),
        KurmanjiLyricText(
          text1: 'نە بێژە یارێ ',
          text2: 'دینە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'مەیڵی یاری ',
          text2: 'شێتم',
          color2: songNewWordColor,
        ),

        oneLine(),

        lyricSmallText(
          text: 'Ew çi ax û nalîn e',
        ),
        KurmanjiLyricText(
          text1: 'ئەو چ ئاخ و نالینە',
        ),
        SoraniLyricText(
          text1: 'ئەوە چ ئاخ و ناڵینێکە',
        ),

        lyricSmallText(
          text: 'Dil şewitî, berf bîne',
        ),
        KurmanjiLyricText(
          text1: 'دل ',
          text2: 'شەوتی',
          color2: songNewWordColor,
          text3: '، بەرف بینە',
        ),
        SoraniLyricText(
          text1: 'دڵ ',
          text2: 'ئەسوتێت',
          color2: songNewWordColor,
          text3: '، بەفر بێنە',
        ),

        lyricSmallText(
          text: 'Tu bi xatirê xwe bikî',
        ),
        KurmanjiLyricText(
          text1: 'تو بخاترێ خوە بکی',
        ),
        SoraniLyricText(
          text1: 'تۆ بیکە بەخاتری خوا',
        ),

        lyricSmallText(
          text: 'Ne bêje yarê dîn e',
        ),
        KurmanjiLyricText(
          text1: 'نە بێژە یارێ ',
          text2: 'دینە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'مەیڵی یاری ',
          text2: 'شێتم',
          color2: songNewWordColor,
        ),

        oneLine(),

        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(
          text1: 'رندا ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'گەورا ',
          color3: songNewWordColor,
          text4: 'من',
        ),
        SoraniLyricText(
          text1: 'جوانەکەی ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'ڕەنگ سپی یەکەی ',
          color3: songNewWordColor,
          text4: 'من',
        ),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(
          text1: 'چەند سالە ئەز ',
          text2: 'ل هێڤیا',
          color2: songNewWordColor,
          text3: ' تە مە',
        ),
        SoraniLyricText(
          text1: 'چەند ساڵە من ',
          text2: 'بە تەمای ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(
          text1: 'لێلێ چەند ساڵە ئەز ',
          text2: 'ل بەندا ',
          color2: songNewWordColor,
          text3: 'تە مە',
        ),
        SoraniLyricText(
          text1: 'لێلێ چەند ساڵە من ',
          text2: 'لە چاوەڕوانی ',
          text3: 'تۆم',
        ),
        oneLine(),
        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(text1: 'رندا من، گەورا من'),
        SoraniLyricText(text1: 'جوانەکەی من، ڕەنگ سپی یەکەی من'),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(text1: 'چەند سالە ئەز ل هێڤیا تە مە'),
        SoraniLyricText(text1: 'چەند ساڵە من بە تەمای تۆم'),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(text1: 'لێلێ چەند ساڵە ئەز ل بەندا تە مە'),
        SoraniLyricText(text1: 'لێلێ چەند ساڵە من لە چاوەڕوانی تۆم'),

        //break
        oneLine(),

        lyricSmallText(
          text: 'Ew çi ax û nalîn e',
        ),
        KurmanjiLyricText(
          text1: 'ئەو چ ئاخ و نالینە',
        ),
        SoraniLyricText(
          text1: 'ئەوە چ ئاخ و ناڵینێکە',
        ),

        lyricSmallText(
          text: 'Dil şewitî, berf bîne',
        ),
        KurmanjiLyricText(
          text1: 'دل ',
          text2: 'شەوتی',
          color2: songNewWordColor,
          text3: '، بەرف بینە',
        ),
        SoraniLyricText(
          text1: 'دڵ ',
          text2: 'ئەسوتێت',
          color2: songNewWordColor,
          text3: '، بەفر بێنە',
        ),

        lyricSmallText(
          text: 'Tu bi xatirê xwe bikî',
        ),
        KurmanjiLyricText(
          text1: 'تو بخاترێ خوە بکی',
        ),
        SoraniLyricText(
          text1: 'تۆ بیکە بەخاتری خوا',
        ),

        lyricSmallText(
          text: 'Ne bêje yarê dîn e',
        ),
        KurmanjiLyricText(
          text1: 'نە بێژە یارێ ',
          text2: 'دینە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'مەیڵی یاری ',
          text2: 'شێتم',
          color2: songNewWordColor,
        ),

        oneLine(),

        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(
          text1: 'رندا ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'گەورا ',
          color3: songNewWordColor,
          text4: 'من',
        ),
        SoraniLyricText(
          text1: 'جوانەکەی ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'ڕەنگ سپی یەکەی ',
          color3: songNewWordColor,
          text4: 'من',
        ),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(
          text1: 'چەند سالە ئەز ',
          text2: 'ل هێڤیا',
          color2: songNewWordColor,
          text3: ' تە مە',
        ),
        SoraniLyricText(
          text1: 'چەند ساڵە من ',
          text2: 'بە تەمای ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(
          text1: 'لێلێ چەند ساڵە ئەز ',
          text2: 'ل بەندا ',
          color2: songNewWordColor,
          text3: 'تە مە',
        ),
        SoraniLyricText(
          text1: 'لێلێ چەند ساڵە من ',
          text2: 'لە چاوەڕوانی ',
          text3: 'تۆم',
        ),
        oneLine(),
        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(text1: 'رندا من، گەورا من'),
        SoraniLyricText(text1: 'جوانەکەی من، ڕەنگ سپی یەکەی من'),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(text1: 'چەند سالە ئەز ل هێڤیا تە مە'),
        SoraniLyricText(text1: 'چەند ساڵە من بە تەمای تۆم'),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(text1: 'لێلێ چەند ساڵە ئەز ل بەندا تە مە'),
        SoraniLyricText(text1: 'لێلێ چەند ساڵە من لە چاوەڕوانی تۆم'),

        //break
        oneLine(),

        lyricSmallText(
          text: 'Ew çi ax û nalîn e',
        ),
        KurmanjiLyricText(
          text1: 'ئەو چ ئاخ و نالینە',
        ),
        SoraniLyricText(
          text1: 'ئەوە چ ئاخ و ناڵینێکە',
        ),

        lyricSmallText(
          text: 'Dil şewitî, berf bîne',
        ),
        KurmanjiLyricText(
          text1: 'دل ',
          text2: 'شەوتی',
          color2: songNewWordColor,
          text3: '، بەرف بینە',
        ),
        SoraniLyricText(
          text1: 'دڵ ',
          text2: 'ئەسوتێت',
          color2: songNewWordColor,
          text3: '، بەفر بێنە',
        ),

        lyricSmallText(
          text: 'Tu bi xatirê xwe bikî',
        ),
        KurmanjiLyricText(
          text1: 'تو بخاترێ خوە بکی',
        ),
        SoraniLyricText(
          text1: 'تۆ بیکە بەخاتری خوا',
        ),

        lyricSmallText(
          text: 'Ne bêje yarê dîn e',
        ),
        KurmanjiLyricText(
          text1: 'نە بێژە یارێ ',
          text2: 'دینە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'مەیڵی یاری ',
          text2: 'شێتم',
          color2: songNewWordColor,
        ),

        oneLine(),

        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(
          text1: 'رندا ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'گەورا ',
          color3: songNewWordColor,
          text4: 'من',
        ),
        SoraniLyricText(
          text1: 'جوانەکەی ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'ڕەنگ سپی یەکەی ',
          color3: songNewWordColor,
          text4: 'من',
        ),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(
          text1: 'چەند سالە ئەز ',
          text2: 'ل هێڤیا',
          color2: songNewWordColor,
          text3: ' تە مە',
        ),
        SoraniLyricText(
          text1: 'چەند ساڵە من ',
          text2: 'بە تەمای ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(
          text1: 'لێلێ چەند ساڵە ئەز ',
          text2: 'ل بەندا ',
          color2: songNewWordColor,
          text3: 'تە مە',
        ),
        SoraniLyricText(
          text1: 'لێلێ چەند ساڵە من ',
          text2: 'لە چاوەڕوانی ',
          text3: 'تۆم',
        ),
        oneLine(),
        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(text1: 'رندا من، گەورا من'),
        SoraniLyricText(text1: 'جوانەکەی من، ڕەنگ سپی یەکەی من'),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(text1: 'چەند سالە ئەز ل هێڤیا تە مە'),
        SoraniLyricText(text1: 'چەند ساڵە من بە تەمای تۆم'),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(text1: 'لێلێ چەند ساڵە ئەز ل بەندا تە مە'),
        SoraniLyricText(text1: 'لێلێ چەند ساڵە من لە چاوەڕوانی تۆم'),

        //break
        oneLine(),

        lyricSmallText(
          text: 'Ew çi ax û nalîn e',
        ),
        KurmanjiLyricText(
          text1: 'ئەو چ ئاخ و نالینە',
        ),
        SoraniLyricText(
          text1: 'ئەوە چ ئاخ و ناڵینێکە',
        ),

        lyricSmallText(
          text: 'Dil şewitî, berf bîne',
        ),
        KurmanjiLyricText(
          text1: 'دل ',
          text2: 'شەوتی',
          color2: songNewWordColor,
          text3: '، بەرف بینە',
        ),
        SoraniLyricText(
          text1: 'دڵ ',
          text2: 'ئەسوتێت',
          color2: songNewWordColor,
          text3: '، بەفر بێنە',
        ),

        lyricSmallText(
          text: 'Tu bi xatirê xwe bikî',
        ),
        KurmanjiLyricText(
          text1: 'تو بخاترێ خوە بکی',
        ),
        SoraniLyricText(
          text1: 'تۆ بیکە بەخاتری خوا',
        ),

        lyricSmallText(
          text: 'Ne bêje yarê dîn e',
        ),
        KurmanjiLyricText(
          text1: 'نە بێژە یارێ ',
          text2: 'دینە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'مەیڵی یاری ',
          text2: 'شێتم',
          color2: songNewWordColor,
        ),

        oneLine(),

        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(
          text1: 'رندا ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'گەورا ',
          color3: songNewWordColor,
          text4: 'من',
        ),
        SoraniLyricText(
          text1: 'جوانەکەی ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'ڕەنگ سپی یەکەی ',
          color3: songNewWordColor,
          text4: 'من',
        ),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(
          text1: 'چەند سالە ئەز ',
          text2: 'ل هێڤیا',
          color2: songNewWordColor,
          text3: ' تە مە',
        ),
        SoraniLyricText(
          text1: 'چەند ساڵە من ',
          text2: 'بە تەمای ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(
          text1: 'لێلێ چەند ساڵە ئەز ',
          text2: 'ل بەندا ',
          color2: songNewWordColor,
          text3: 'تە مە',
        ),
        SoraniLyricText(
          text1: 'لێلێ چەند ساڵە من ',
          text2: 'لە چاوەڕوانی ',
          text3: 'تۆم',
        ),
        oneLine(),
        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(text1: 'رندا من، گەورا من'),
        SoraniLyricText(text1: 'جوانەکەی من، ڕەنگ سپی یەکەی من'),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(text1: 'چەند سالە ئەز ل هێڤیا تە مە'),
        SoraniLyricText(text1: 'چەند ساڵە من بە تەمای تۆم'),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(text1: 'لێلێ چەند ساڵە ئەز ل بەندا تە مە'),
        SoraniLyricText(text1: 'لێلێ چەند ساڵە من لە چاوەڕوانی تۆم'),

        //break
        oneLine(),

        lyricSmallText(
          text: 'Ew çi ax û nalîn e',
        ),
        KurmanjiLyricText(
          text1: 'ئەو چ ئاخ و نالینە',
        ),
        SoraniLyricText(
          text1: 'ئەوە چ ئاخ و ناڵینێکە',
        ),

        lyricSmallText(
          text: 'Dil şewitî, berf bîne',
        ),
        KurmanjiLyricText(
          text1: 'دل ',
          text2: 'شەوتی',
          color2: songNewWordColor,
          text3: '، بەرف بینە',
        ),
        SoraniLyricText(
          text1: 'دڵ ',
          text2: 'ئەسوتێت',
          color2: songNewWordColor,
          text3: '، بەفر بێنە',
        ),

        lyricSmallText(
          text: 'Tu bi xatirê xwe bikî',
        ),
        KurmanjiLyricText(
          text1: 'تو بخاترێ خوە بکی',
        ),
        SoraniLyricText(
          text1: 'تۆ بیکە بەخاتری خوا',
        ),

        lyricSmallText(
          text: 'Ne bêje yarê dîn e',
        ),
        KurmanjiLyricText(
          text1: 'نە بێژە یارێ ',
          text2: 'دینە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'مەیڵی یاری ',
          text2: 'شێتم',
          color2: songNewWordColor,
        ),

        oneLine(),

        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(
          text1: 'رندا ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'گەورا ',
          color3: songNewWordColor,
          text4: 'من',
        ),
        SoraniLyricText(
          text1: 'جوانەکەی ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'ڕەنگ سپی یەکەی ',
          color3: songNewWordColor,
          text4: 'من',
        ),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(
          text1: 'چەند سالە ئەز ',
          text2: 'ل هێڤیا',
          color2: songNewWordColor,
          text3: ' تە مە',
        ),
        SoraniLyricText(
          text1: 'چەند ساڵە من ',
          text2: 'بە تەمای ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(
          text1: 'لێلێ چەند ساڵە ئەز ',
          text2: 'ل بەندا ',
          color2: songNewWordColor,
          text3: 'تە مە',
        ),
        SoraniLyricText(
          text1: 'لێلێ چەند ساڵە من ',
          text2: 'لە چاوەڕوانی ',
          text3: 'تۆم',
        ),
        oneLine(),
        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(text1: 'رندا من، گەورا من'),
        SoraniLyricText(text1: 'جوانەکەی من، ڕەنگ سپی یەکەی من'),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(text1: 'چەند سالە ئەز ل هێڤیا تە مە'),
        SoraniLyricText(text1: 'چەند ساڵە من بە تەمای تۆم'),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(text1: 'لێلێ چەند ساڵە ئەز ل بەندا تە مە'),
        SoraniLyricText(text1: 'لێلێ چەند ساڵە من لە چاوەڕوانی تۆم'),

        //break
        oneLine(),

        lyricSmallText(
          text: 'Ew çi ax û nalîn e',
        ),
        KurmanjiLyricText(
          text1: 'ئەو چ ئاخ و نالینە',
        ),
        SoraniLyricText(
          text1: 'ئەوە چ ئاخ و ناڵینێکە',
        ),

        lyricSmallText(
          text: 'Dil şewitî, berf bîne',
        ),
        KurmanjiLyricText(
          text1: 'دل ',
          text2: 'شەوتی',
          color2: songNewWordColor,
          text3: '، بەرف بینە',
        ),
        SoraniLyricText(
          text1: 'دڵ ',
          text2: 'ئەسوتێت',
          color2: songNewWordColor,
          text3: '، بەفر بێنە',
        ),

        lyricSmallText(
          text: 'Tu bi xatirê xwe bikî',
        ),
        KurmanjiLyricText(
          text1: 'تو بخاترێ خوە بکی',
        ),
        SoraniLyricText(
          text1: 'تۆ بیکە بەخاتری خوا',
        ),

        lyricSmallText(
          text: 'Ne bêje yarê dîn e',
        ),
        KurmanjiLyricText(
          text1: 'نە بێژە یارێ ',
          text2: 'دینە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'مەیڵی یاری ',
          text2: 'شێتم',
          color2: songNewWordColor,
        ),

        oneLine(),

        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(
          text1: 'رندا ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'گەورا ',
          color3: songNewWordColor,
          text4: 'من',
        ),
        SoraniLyricText(
          text1: 'جوانەکەی ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'ڕەنگ سپی یەکەی ',
          color3: songNewWordColor,
          text4: 'من',
        ),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(
          text1: 'چەند سالە ئەز ',
          text2: 'ل هێڤیا',
          color2: songNewWordColor,
          text3: ' تە مە',
        ),
        SoraniLyricText(
          text1: 'چەند ساڵە من ',
          text2: 'بە تەمای ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(
          text1: 'لێلێ چەند ساڵە ئەز ',
          text2: 'ل بەندا ',
          color2: songNewWordColor,
          text3: 'تە مە',
        ),
        SoraniLyricText(
          text1: 'لێلێ چەند ساڵە من ',
          text2: 'لە چاوەڕوانی ',
          text3: 'تۆم',
        ),
        oneLine(),
        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(text1: 'رندا من، گەورا من'),
        SoraniLyricText(text1: 'جوانەکەی من، ڕەنگ سپی یەکەی من'),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(text1: 'چەند سالە ئەز ل هێڤیا تە مە'),
        SoraniLyricText(text1: 'چەند ساڵە من بە تەمای تۆم'),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(text1: 'لێلێ چەند ساڵە ئەز ل بەندا تە مە'),
        SoraniLyricText(text1: 'لێلێ چەند ساڵە من لە چاوەڕوانی تۆم'),

        //break
        oneLine(),

        lyricSmallText(
          text: 'Ew çi ax û nalîn e',
        ),
        KurmanjiLyricText(
          text1: 'ئەو چ ئاخ و نالینە',
        ),
        SoraniLyricText(
          text1: 'ئەوە چ ئاخ و ناڵینێکە',
        ),

        lyricSmallText(
          text: 'Dil şewitî, berf bîne',
        ),
        KurmanjiLyricText(
          text1: 'دل ',
          text2: 'شەوتی',
          color2: songNewWordColor,
          text3: '، بەرف بینە',
        ),
        SoraniLyricText(
          text1: 'دڵ ',
          text2: 'ئەسوتێت',
          color2: songNewWordColor,
          text3: '، بەفر بێنە',
        ),

        lyricSmallText(
          text: 'Tu bi xatirê xwe bikî',
        ),
        KurmanjiLyricText(
          text1: 'تو بخاترێ خوە بکی',
        ),
        SoraniLyricText(
          text1: 'تۆ بیکە بەخاتری خوا',
        ),

        lyricSmallText(
          text: 'Ne bêje yarê dîn e',
        ),
        KurmanjiLyricText(
          text1: 'نە بێژە یارێ ',
          text2: 'دینە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'مەیڵی یاری ',
          text2: 'شێتم',
          color2: songNewWordColor,
        ),

        oneLine(),

        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(
          text1: 'رندا ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'گەورا ',
          color3: songNewWordColor,
          text4: 'من',
        ),
        SoraniLyricText(
          text1: 'جوانەکەی ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'ڕەنگ سپی یەکەی ',
          color3: songNewWordColor,
          text4: 'من',
        ),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(
          text1: 'چەند سالە ئەز ',
          text2: 'ل هێڤیا',
          color2: songNewWordColor,
          text3: ' تە مە',
        ),
        SoraniLyricText(
          text1: 'چەند ساڵە من ',
          text2: 'بە تەمای ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(
          text1: 'لێلێ چەند ساڵە ئەز ',
          text2: 'ل بەندا ',
          color2: songNewWordColor,
          text3: 'تە مە',
        ),
        SoraniLyricText(
          text1: 'لێلێ چەند ساڵە من ',
          text2: 'لە چاوەڕوانی ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),
        oneLine(),
        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(text1: 'رندا من، گەورا من'),
        SoraniLyricText(text1: 'جوانەکەی من، ڕەنگ سپی یەکەی من'),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(text1: 'چەند سالە ئەز ل هێڤیا تە مە'),
        SoraniLyricText(text1: 'چەند ساڵە من بە تەمای تۆم'),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(text1: 'لێلێ چەند ساڵە ئەز ل بەندا تە مە'),
        SoraniLyricText(text1: 'لێلێ چەند ساڵە من لە چاوەڕوانی تۆم'),

        //break
        oneLine(),

        lyricSmallText(
          text: 'Ew çi ax û nalîn e',
        ),
        KurmanjiLyricText(
          text1: 'ئەو چ ئاخ و نالینە',
        ),
        SoraniLyricText(
          text1: 'ئەوە چ ئاخ و ناڵینێکە',
        ),

        lyricSmallText(
          text: 'Dil şewitî, berf bîne',
        ),
        KurmanjiLyricText(
          text1: 'دل ',
          text2: 'شەوتی',
          color2: songNewWordColor,
          text3: '، بەرف بینە',
        ),
        SoraniLyricText(
          text1: 'دڵ ',
          text2: 'ئەسوتێت',
          color2: songNewWordColor,
          text3: '، بەفر بێنە',
        ),

        lyricSmallText(
          text: 'Tu bi xatirê xwe bikî',
        ),
        KurmanjiLyricText(
          text1: 'تو بخاترێ خوە بکی',
        ),
        SoraniLyricText(
          text1: 'تۆ بیکە بەخاتری خوا',
        ),

        lyricSmallText(
          text: 'Ne bêje yarê dîn e',
        ),
        KurmanjiLyricText(
          text1: 'نە بێژە یارێ ',
          text2: 'دینە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'مەیڵی یاری ',
          text2: 'شێتم',
          color2: songNewWordColor,
        ),

        oneLine(),

        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(
          text1: 'رندا ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'گەورا ',
          color3: songNewWordColor,
          text4: 'من',
        ),
        SoraniLyricText(
          text1: 'جوانەکەی ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'ڕەنگ سپی یەکەی ',
          color3: songNewWordColor,
          text4: 'من',
        ),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(
          text1: 'چەند سالە ئەز ',
          text2: 'ل هێڤیا',
          color2: songNewWordColor,
          text3: ' تە مە',
        ),
        SoraniLyricText(
          text1: 'چەند ساڵە من ',
          text2: 'بە تەمای ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(
          text1: 'لێلێ چەند ساڵە ئەز ',
          text2: 'ل بەندا ',
          color2: songNewWordColor,
          text3: 'تە مە',
        ),
        SoraniLyricText(
          text1: 'لێلێ چەند ساڵە من ',
          text2: 'لە چاوەڕوانی ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),
        oneLine(),
        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(text1: 'رندا من، گەورا من'),
        SoraniLyricText(text1: 'جوانەکەی من، ڕەنگ سپی یەکەی من'),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(text1: 'چەند سالە ئەز ل هێڤیا تە مە'),
        SoraniLyricText(text1: 'چەند ساڵە من بە تەمای تۆم'),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(text1: 'لێلێ چەند ساڵە ئەز ل بەندا تە مە'),
        SoraniLyricText(text1: 'لێلێ چەند ساڵە من لە چاوەڕوانی تۆم'),

        //break
        oneLine(),

        lyricSmallText(
          text: 'Ew çi ax û nalîn e',
        ),
        KurmanjiLyricText(
          text1: 'ئەو چ ئاخ و نالینە',
        ),
        SoraniLyricText(
          text1: 'ئەوە چ ئاخ و ناڵینێکە',
        ),

        lyricSmallText(
          text: 'Dil şewitî, berf bîne',
        ),
        KurmanjiLyricText(
          text1: 'دل ',
          text2: 'شەوتی',
          color2: songNewWordColor,
          text3: '، بەرف بینە',
        ),
        SoraniLyricText(
          text1: 'دڵ ',
          text2: 'ئەسوتێت',
          color2: songNewWordColor,
          text3: '، بەفر بێنە',
        ),

        lyricSmallText(
          text: 'Tu bi xatirê xwe bikî',
        ),
        KurmanjiLyricText(
          text1: 'تو بخاترێ خوە بکی',
        ),
        SoraniLyricText(
          text1: 'تۆ بیکە بەخاتری خوا',
        ),

        lyricSmallText(
          text: 'Ne bêje yarê dîn e',
        ),
        KurmanjiLyricText(
          text1: 'نە بێژە یارێ ',
          text2: 'دینە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'مەیڵی یاری ',
          text2: 'شێتم',
          color2: songNewWordColor,
        ),

        oneLine(),

        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(
          text1: 'رندا ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'گەورا ',
          color3: songNewWordColor,
          text4: 'من',
        ),
        SoraniLyricText(
          text1: 'جوانەکەی ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'ڕەنگ سپی یەکەی ',
          color3: songNewWordColor,
          text4: 'من',
        ),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(
          text1: 'چەند سالە ئەز ',
          text2: 'ل هێڤیا',
          color2: songNewWordColor,
          text3: ' تە مە',
        ),
        SoraniLyricText(
          text1: 'چەند ساڵە من ',
          text2: 'بە تەمای ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(
          text1: 'لێلێ چەند ساڵە ئەز ',
          text2: 'ل بەندا ',
          color2: songNewWordColor,
          text3: 'تە مە',
        ),
        SoraniLyricText(
          text1: 'لێلێ چەند ساڵە من ',
          text2: 'لە چاوەڕوانی ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),
        oneLine(),
        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(text1: 'رندا من، گەورا من'),
        SoraniLyricText(text1: 'جوانەکەی من، ڕەنگ سپی یەکەی من'),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(text1: 'چەند سالە ئەز ل هێڤیا تە مە'),
        SoraniLyricText(text1: 'چەند ساڵە من بە تەمای تۆم'),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(text1: 'لێلێ چەند ساڵە ئەز ل بەندا تە مە'),
        SoraniLyricText(text1: 'لێلێ چەند ساڵە من لە چاوەڕوانی تۆم'),

        //break
        oneLine(),

        lyricSmallText(
          text: 'Ew çi ax û nalîn e',
        ),
        KurmanjiLyricText(
          text1: 'ئەو چ ئاخ و نالینە',
        ),
        SoraniLyricText(
          text1: 'ئەوە چ ئاخ و ناڵینێکە',
        ),

        lyricSmallText(
          text: 'Dil şewitî, berf bîne',
        ),
        KurmanjiLyricText(
          text1: 'دل ',
          text2: 'شەوتی',
          color2: songNewWordColor,
          text3: '، بەرف بینە',
        ),
        SoraniLyricText(
          text1: 'دڵ ',
          text2: 'ئەسوتێت',
          color2: songNewWordColor,
          text3: '، بەفر بێنە',
        ),

        lyricSmallText(
          text: 'Tu bi xatirê xwe bikî',
        ),
        KurmanjiLyricText(
          text1: 'تو بخاترێ خوە بکی',
        ),
        SoraniLyricText(
          text1: 'تۆ بیکە بەخاتری خوا',
        ),

        lyricSmallText(
          text: 'Ne bêje yarê dîn e',
        ),
        KurmanjiLyricText(
          text1: 'نە بێژە یارێ ',
          text2: 'دینە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'مەیڵی یاری ',
          text2: 'شێتم',
          color2: songNewWordColor,
        ),

        oneLine(),

        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(
          text1: 'رندا ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'گەورا ',
          color3: songNewWordColor,
          text4: 'من',
        ),
        SoraniLyricText(
          text1: 'جوانەکەی ',
          color1: songNewWordColor,
          text2: 'من، ',
          text3: 'ڕەنگ سپی یەکەی ',
          color3: songNewWordColor,
          text4: 'من',
        ),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(
          text1: 'چەند سالە ئەز ',
          text2: 'ل هێڤیا',
          color2: songNewWordColor,
          text3: ' تە مە',
        ),
        SoraniLyricText(
          text1: 'چەند ساڵە من ',
          text2: 'بە تەمای ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(
          text1: 'لێلێ چەند ساڵە ئەز ',
          text2: 'ل بەندا ',
          color2: songNewWordColor,
          text3: 'تە مە',
        ),
        SoraniLyricText(
          text1: 'لێلێ چەند ساڵە من ',
          text2: 'لە چاوەڕوانی ',
          color2: songNewWordColor,
          text3: 'تۆم',
        ),
        oneLine(),
        //break
        lyricSmallText(
          text: 'rinda min, gewra min',
        ),
        KurmanjiLyricText(text1: 'رندا من، گەورا من'),
        SoraniLyricText(text1: 'جوانەکەی من، ڕەنگ سپی یەکەی من'),

        //break
        lyricSmallText(
          text: 'çend sale ez li hêvya te me',
        ),
        KurmanjiLyricText(text1: 'چەند سالە ئەز ل هێڤیا تە مە'),
        SoraniLyricText(text1: 'چەند ساڵە من بە تەمای تۆم'),

        //break
        lyricSmallText(
          text: 'lele çend sale ez li benda te me',
        ),
        KurmanjiLyricText(text1: 'لێلێ چەند ساڵە ئەز ل بەندا تە مە'),
        SoraniLyricText(text1: 'لێلێ چەند ساڵە من لە چاوەڕوانی تۆم'),
      ],
    );

//new
hizirL() => Column(
      children: [
        lyricBigText(
          text: 'شڤانێ گارێ',
        ),
        singerName('زەکەریا عەبدوڵلا'),
        const SizedBox(height: 50),

        //break
        lyricSmallText(
          text: 'Hizir nekey dê lê mînî',
        ),
        KurmanjiLyricText(text1: 'هزر نەکەی دێ لێ مینی'),
        SoraniLyricText(text1: 'وانەزانیت تێیدا ئەمێنیتەوە'),

        //break
        lyricSmallText(
          text: 'Her dê xewna pê ve bînî',
        ),
        KurmanjiLyricText(text1: 'هەر دێ خەونا پێڤە بینی'),
        SoraniLyricText(text1: 'هەردەبێت خەوی پێوە ببینی'),

        //break
        lyricSmallText(
          text: 'Hizir nekey dê lê mînî',
        ),
        KurmanjiLyricText(text1: 'هزر نەکەی دێ لێ مینی'),
        SoraniLyricText(text1: 'وانەزانیت تێیدا ئەمێنیتەوە'),

        //break
        lyricSmallText(
          text: 'Her dê xewna pê ve bînî',
        ),
        KurmanjiLyricText(text1: 'هەر دێ خەونا پێڤە بینی'),
        SoraniLyricText(text1: 'هەردەبێت خەوی پێوە ببینی'),

        oneLine(),

        lyricSmallText(
          text: 'Seri Garey her avake',
        ),
        KurmanjiLyricText(text1: 'سەری گارەی هەر ئاڤاکە'),
        SoraniLyricText(text1: 'سەری گارە هەر ئاوابێت'),

        lyricSmallText(
          text: 'Tu warê min naçêrînî',
        ),
        KurmanjiLyricText(
          text1: 'تو ',
          text2: 'وارێ ',
          text3: 'من ',
          text4: 'ناچێرینی',
          color2: songNewWordColor,
          color4: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'تۆ لە ',
          text2: 'خاکی ',
          text3: 'مندا ',
          text4: 'لەوەڕناکەیت',
          color2: songNewWordColor,
          color4: songNewWordColor,
        ),

        lyricSmallText(
          text: 'Seri Garey her avake',
        ),
        KurmanjiLyricText(text1: 'سەری گارەی هەر ئاڤاکە'),
        SoraniLyricText(text1: 'سەری گارە هەر ئاوابێت'),

        lyricSmallText(
          text: 'Tu warê min naçêrînî',
        ),
        KurmanjiLyricText(
          text1: 'تو ',
          text2: 'وارێ ',
          text3: 'من ',
          text4: 'ناچێرینی',
          color2: songNewWordColor,
          color4: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'تۆ لە ',
          text2: 'خاکی ',
          text3: 'مندا ',
          text4: 'لەوەڕناکەیت',
          color2: songNewWordColor,
          color4: songNewWordColor,
        ),

        oneLine(),

        lyricSmallText(
          text: 'Çi Eskender, çi Zeynefûn',
        ),
        KurmanjiLyricText(text1: 'چ ئەسکەندەر چ زەینەفون'),

        lyricSmallText(
          text: 'Li berî we li vêre peyda bûn',
        ),
        KurmanjiLyricText(
          text1: 'ل بەری وە ',
          text2: 'ل ڤێری ',
          color2: songNewWordColor,
          text3: 'پەیدا بوون',
        ),
        SoraniLyricText(
          text1: 'لە پێش ئێوە ',
          text2: 'لە ئێرەدا ',
          color2: songNewWordColor,
          text3: 'پەیدابوون (هەبوون)',
        ),

        lyricSmallText(
          text: 'Çi Eskender, çi Zeynefûn',
        ),
        KurmanjiLyricText(text1: 'چ ئەسکەندەر چ زەینەفون'),

        lyricSmallText(
          text: 'Li berî we li vêre peyda bûn',
        ),
        KurmanjiLyricText(
          text1: 'ل بەری وە ',
          text2: 'ل ڤێری ',
          color2: songNewWordColor,
          text3: 'پەیدا بوون',
        ),
        SoraniLyricText(
          text1: 'لە پێش ئێوە ',
          text2: 'لە ئێرەدا ',
          color2: songNewWordColor,
          text3: 'پەیدابوون (هەبوون)',
        ),

        oneLine(),

        lyricSmallText(
          text: 'Welati me lê bûn agir',
        ),
        KurmanjiLyricText(text1: 'وەلاتی مە لێ بوون ئاگر'),
        SoraniLyricText(text1: 'وڵاتی ئێمەیان لێ بووە ئاگر'),

        lyricSmallText(
          text: 'Hemi tevde revîn û çûn',
        ),
        KurmanjiLyricText(
          text1: 'هەمی تەڤدە ',
          text2: 'ڕەڤین و چوون',
          color1: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'هەموویان پێکەوە ',
          text2: 'ڕایانکرد و چوون (تیاچوون)',
          color1: songNewWordColor,
        ),

        lyricSmallText(
          text: 'Welati me lê bûn agir',
        ),
        KurmanjiLyricText(text1: 'وەلاتی مە لێ بوون ئاگر'),
        SoraniLyricText(text1: 'وڵاتی ئێمەیان لێ بووە ئاگر'),

        lyricSmallText(
          text: 'Hemi tevde revîn û çûn',
        ),
        KurmanjiLyricText(
          text1: 'هەمی تەڤدە ',
          text2: 'ڕەڤین و چوون',
          color1: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'هەموویان پێکەوە ',
          text2: 'ڕایانکرد و چوون (تیاچوون)',
          color1: songNewWordColor,
        ),

        const SizedBox(height: 40),
      ],
    );

//Complete
nasrinL() => Column(
      children: [
        lyricBigText(
          text: 'نەسرین - مەم و زین',
        ),
        singerName('دڵژەن ڕۆنی'),

        const SizedBox(height: 50),
        //break
        lyricSmallText(
          text: 'Te ez kuştim',
        ),
        KurmanjiLyricText(text1: 'تە ئەز کوشتم'),
        SoraniLyricText(text1: 'تۆ منت کوشت'),

        //break
        lyricSmallText(
          text: 'Te ez kuştim Nesrîn ê',
        ),
        KurmanjiLyricText(text1: 'تە ئەز کوشتم نەسرینێ'),
        SoraniLyricText(text1: 'تۆ منت کوشت نەسرین'),

        //break
        lyricSmallText(
          text: 'Dilêm dixwaze te bibînê',
        ),
        KurmanjiLyricText(text1: 'دڵم دخوازێ تە ببینێ'),
        SoraniLyricText(text1: 'دڵم دەخوازێت تۆ ببینێ'),

        //break
        lyricSmallText(
          text: 'Kulîlka sor û şînê',
        ),
        KurmanjiLyricText(
          text1: 'کولیلکا',
          text2: ' سۆر و شینێ',
          color1: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'گوڵی',
          text2: '  سور و سەوز',
          color1: songNewWordColor,
        ),

        //break
        lyricSmallText(
          text: 'Te ez pîr kirim lê dînê',
        ),
        KurmanjiLyricText(
          text1: 'تە ئەز پیر کرم',
          text2: ' لێ دینێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'تۆ منت پیر کرد',
          text2: ' شێتەگیان',
          color2: songNewWordColor,
        ),

        lyricSmallText(
          text: 'Te ez pîr kirim lê dînê',
        ),
        KurmanjiLyricText(text1: 'تە ئەز پیر کرم لێ دینێ'),
        SoraniLyricText(text1: 'تۆ منت پیر کرد شێتەگیان'),

        lyricSmallText(
          text: 'Dilêm dixwaze te bibînê',
        ),
        KurmanjiLyricText(text1: 'دڵم دخوازێ تە ببینێ'),
        SoraniLyricText(text1: 'دڵم دەخوازێت تۆ ببینێ'),

        lyricSmallText(
          text: 'Kulîlka sor û şînê',
        ),
        KurmanjiLyricText(
          text1: 'کولیلکا سۆر و شینێ',
        ),
        SoraniLyricText(
          text1: 'گوڵی سورو سەوز',
        ),

        lyricSmallText(
          text: 'Te ez pîr kirim lê dînê',
        ),
        KurmanjiLyricText(text1: 'تە ئەز پیر کرم لێ دینێ'),
        SoraniLyricText(text1: 'تۆ منت پیر کرد شێتەگیان'),

        oneLine(),
        //break
        lyricSmallText(
          text: 'Çavreşê',
        ),
        KurmanjiLyricText(text1: 'چاڤڕەشێ'),
        SoraniLyricText(text1: 'چاوڕەش'),

        //break
        lyricSmallText(
          text: 'Çavreşê dilgeşê',
        ),
        KurmanjiLyricText(text1: 'چاڤڕەشێ دڵگەشێ'),
        SoraniLyricText(text1: 'چاوڕەشی دڵگەش'),

        //break
        lyricSmallText(
          text: 'Ru wek stêrka bineqşê',
        ),
        KurmanjiLyricText(
          text1: 'ڕوو وەک',
          text2: ' ستێرکا ',
          text3: 'بنەقشێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'ڕوو وەک',
          text2: ' ئەستێرەیەکی ',
          text3: 'درەوشاو',
          color2: songNewWordColor,
        ),

        //break
        lyricSmallText(
          text: 'Roj rengê çavreşê',
        ),
        KurmanjiLyricText(text1: 'ڕۆژ رەنگێ چاڤڕەشێ'),
        SoraniLyricText(text1: 'ڕۆژ (خۆر) ڕەنگی چاوڕەشە'),

        //break
        lyricSmallText(
          text: 'Li ber mala me dimeşê',
        ),
        KurmanjiLyricText(
          text1: 'ل بەر ماڵا مە',
          text2: ' دمەشێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'لەبەر ماڵی ئێمەدا',
          text2: ' پیاسە ئەکات',
          color2: songNewWordColor,
        ),

        lyricSmallText(
          text: 'Li ber mala me dimeşê',
        ),
        KurmanjiLyricText(
          text1: 'ل بەر ماڵا مە دمەشێ',
        ),
        SoraniLyricText(
          text1: 'لەبەر ماڵی ئێمەدا پیاسە ئەکات',
        ),

        lyricSmallText(
          text: 'Roj rengê çavreşê',
        ),
        KurmanjiLyricText(text1: 'ڕۆژ رەنگێ چاڤڕەشێ'),
        SoraniLyricText(text1: 'ڕۆژ (خۆر) ڕەنگی چاوڕەشە'),

        lyricSmallText(
          text: 'Li ber mala me dimeşê',
        ),
        KurmanjiLyricText(
          text1: 'ل بەر ماڵا مە دمەشێ',
        ),
        SoraniLyricText(
          text1: 'لەبەر ماڵی ئێمەدا پیاسە ئەکات',
        ),

        lyricSmallText(
          text: 'Li ber mala me dimeşê',
        ),
        KurmanjiLyricText(
          text1: 'ل بەر ماڵا مە دمەشێ',
        ),
        SoraniLyricText(
          text1: 'لەبەر ماڵی ئێمەدا پیاسە ئەکات',
        ),

        const SizedBox(
          height: 40,
        ),
      ],
    );

//Complete
peshmergaL() => Column(
      children: [
        lyricBigText(
          text: 'پێشمەرگە بم',
        ),
        singerName('بڵند ئیبراهیم، ئێران عیسمەت'),
        const SizedBox(
          height: 50,
        ),
        lyricSmallText(
          text: 'Min divêt pêşmerge bim',
        ),
        KurmanjiLyricText(
          text1: 'من ',
          text2: 'دڤێت ',
          text3: 'پێشمەرگە بم',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'دەبێت ',
          text3: 'پێشمەرگە بم',
          color2: songNewWordColor,
        ),
        lyricSmallText(text: 'pêşmergê Kurdistanê'),
        KurmanjiLyricText(
          text1: 'پێشمەرگە کوردستانێ',
        ),
        SoraniLyricText(
          text1: 'پێشمەرگەی کوردستان',
        ),
        lyricSmallText(text: 'Cihê şerî u ez hebim'),
        KurmanjiLyricText(
          text1: 'جهێ ',
          color1: songNewWordColor,
          text2: 'شەڕی و ئەز هەبم',
        ),
        SoraniLyricText(
          text1: 'لەجێگەی ',
          color1: songNewWordColor,
          text2: 'شەڕدا من هەبم',
        ),
        lyricSmallText(text: 'ez kela berxwedanê'),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'کەلا ',
          text3: 'بەرخوەدانێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'قەڵای ',
          text3: 'بەرخۆدانم',
          color2: songNewWordColor,
        ),
        //break
        oneLine(),

        lyricSmallText(
          text: 'Min divêt pêşmerge bim',
        ),
        KurmanjiLyricText(
          text1: 'من ',
          text2: 'دڤێت ',
          text3: 'پێشمەرگە بم',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'دەبێت ',
          text3: 'پێشمەرگە بم',
          color2: songNewWordColor,
        ),
        lyricSmallText(text: 'pêşmergê Kurdistanê'),
        KurmanjiLyricText(
          text1: 'پێشمەرگە کوردستانێ',
        ),
        SoraniLyricText(
          text1: 'پێشمەرگەی کوردستان',
        ),
        lyricSmallText(text: 'Cihê şerî u ez hebim'),
        KurmanjiLyricText(
          text1: 'جهێ ',
          color1: songNewWordColor,
          text2: 'شەڕی و ئەز هەبم',
        ),
        SoraniLyricText(
          text1: 'لەجێگەی ',
          color1: songNewWordColor,
          text2: 'شەڕدا من هەبم',
        ),
        lyricSmallText(text: 'ez kela berxwedanê'),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'کەلا ',
          text3: 'بەرخوەدانێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'قەڵای ',
          text3: 'بەرخۆدانم',
          color2: songNewWordColor,
        ),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Xudan çek û çeper bim',
        ),
        KurmanjiLyricText(
          text1: 'خودان ',
          text2: 'چەک و ',
          text3: 'چەپەر ',
          text4: 'بم',
          color1: songNewWordColor,
          color3: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'خاوەن ',
          text2: 'چەک و ',
          text3: 'قەڵخان ',
          text4: 'بم',
          color1: songNewWordColor,
          color3: songNewWordColor,
        ),

        lyricSmallText(text: 'li Şingalê û Kobanê'),
        KurmanjiLyricText(text1: 'ل شنگەلێ و کۆبانێ '),
        SoraniLyricText(text1: 'لە شنگال و کۆبانێ'),

        lyricSmallText(text: 'Can goriyê Kurda bim'),
        KurmanjiLyricText(text1: 'جان گۆری یێ ', text2: 'کوردا بم', color1: songNewWordColor),
        SoraniLyricText(text1: 'گیان فیدای ', text2: 'کوردان بم', color1: songNewWordColor),
        lyricSmallText(text: 'weke şêra li meydanê'),
        KurmanjiLyricText(
          text1: 'وەکە شێرا ل مەیدانێ',
        ),
        SoraniLyricText(
          text1: 'وەکو شێری ناو مەیدان',
        ),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Ez pêşmergê Kurdanim',
        ),
        KurmanjiLyricText(
          text1: 'ئەز پێشمەرگەی کوردانم ',
        ),
        SoraniLyricText(
          text1: 'من پێشمەرگەی کوردانم ',
        ),
        lyricSmallText(text: 'dujmin û tu bizane'),
        KurmanjiLyricText(
          text1: 'دوژمن و تو بزانە ',
        ),
        SoraniLyricText(
          text1: 'دوژمن تۆ بزانە',
        ),
        lyricSmallText(text: 'Xudan gurzê giranim'),
        KurmanjiLyricText(
          text1: 'خودان گورزێ گرانم',
        ),
        SoraniLyricText(
          text1: 'خاوەن گورزی گرانم',
        ),
        lyricSmallText(text: 'lê te mirin û nemane'),
        KurmanjiLyricText(
          text1: 'لێ تە مرن و نەمانە ',
        ),
        SoraniLyricText(
          text1: 'لە تۆ مردن و نەمانە',
        ),

        oneLine(),
        lyricSmallText(
          text: 'Ez pêşmergê Kurdanim',
        ),
        KurmanjiLyricText(
          text1: 'ئەز پێشمەرگەی کوردانم ',
        ),
        SoraniLyricText(
          text1: 'من پێشمەرگەی کوردانم ',
        ),
        lyricSmallText(text: 'dujmin û tu bizane'),
        KurmanjiLyricText(
          text1: 'دوژمن و تو بزانە ',
        ),
        SoraniLyricText(
          text1: 'دوژمن تۆ بزانە',
        ),
        lyricSmallText(text: 'Xudan gurzê giranim'),
        KurmanjiLyricText(
          text1: 'خودان گورزێ گرانم',
        ),
        SoraniLyricText(
          text1: 'خاوەن گورزی گرانم',
        ),
        lyricSmallText(text: 'lê te mirin û nemane'),
        KurmanjiLyricText(
          text1: 'لێ تە مرن و نەمانە ',
        ),
        SoraniLyricText(
          text1: 'لە تۆ مردن و نەمانە',
        ),
        oneLine(),

        lyricSmallText(
          text: 'Kurdim, xudan dastanim',
        ),
        KurmanjiLyricText(
          text1: 'کوردم خودان داستانم ',
        ),
        SoraniLyricText(
          text1: 'کوردم خاوەن داستانم ',
        ),
        lyricSmallText(text: 'ser serê te fermane'),
        KurmanjiLyricText(
          text1: 'سەر سەرێ تە فەرمانە',
        ),
        SoraniLyricText(
          text1: 'لەسەر تۆ فەرمانە',
        ),

        lyricSmallText(
          text: 'Kurdim, xudan dastanim',
        ),
        SoraniLyricText(
          text1: 'کوردم خاوەن داستانم ',
        ),
        lyricSmallText(text: 'ser serê te fermane'),
        KurmanjiLyricText(
          text1: 'سەر سەرێ تە فەرمانە',
        ),
        SoraniLyricText(
          text1: 'لەسەر تۆ فەرمانە',
        ),

        lyricSmallText(
          text: 'Ez şerker û şervanim',
        ),
        KurmanjiLyricText(
          text1: 'ئەز شەڕکەر و شەڕڤانم',
        ),
        KurmanjiLyricText(
          text1: 'من شەڕکەر و شەڕڤانم',
        ),
        lyricSmallText(text: 'mirina te van destane'),
        KurmanjiLyricText(
          text1: 'مرنا تە ',
          text2: 'ڤان ',
          color2: songNewWordColor,
          text3: 'دەستانە',
        ),
        KurmanjiLyricText(
          text1: 'مردنی تۆ ',
          text2: 'لەسەر ئەم ',
          color2: songNewWordColor,
          text3: 'دەستانەیە',
        ),

        lyricSmallText(
          text: 'Ez şerker û şervanim',
        ),
        KurmanjiLyricText(
          text1: 'ئەز شەڕکەر و شەڕڤانم',
        ),
        KurmanjiLyricText(
          text1: 'من شەڕکەر و شەڕڤانم',
        ),
        lyricSmallText(text: 'mirina te van destane'),
        KurmanjiLyricText(
          text1: 'مرنا تە ',
          text2: 'ڤان ',
          color2: songNewWordColor,
          text3: 'دەستانە',
        ),
        KurmanjiLyricText(
          text1: 'مردنی تۆ ',
          text2: 'لەسەر ئەم ',
          color2: songNewWordColor,
          text3: 'دەستانەیە',
        ),

        oneLine(),

        lyricSmallText(
          text: 'Min divêt pêşmerge bim',
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'دەبێت ',
          text3: 'پێشمەرگە بم',
          color2: songNewWordColor,
        ),
        lyricSmallText(text: 'pêşmergê Kurdistanê'),
        KurmanjiLyricText(
          text1: 'پێشمەرگە کوردستانێ',
        ),
        SoraniLyricText(
          text1: 'پێشمەرگەی کوردستان',
        ),
        lyricSmallText(text: 'Cihê şerî u ez hebim'),
        KurmanjiLyricText(
          text1: 'جهێ ',
          color1: songNewWordColor,
          text2: 'شەڕی و ئەز هەبم',
        ),
        SoraniLyricText(
          text1: 'لەجێگەی ',
          color1: songNewWordColor,
          text2: 'شەڕدا من هەبم',
        ),
        lyricSmallText(text: 'ez kela berxwedanê'),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'کەلا ',
          text3: 'بەرخوەدانێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'قەڵای ',
          text3: 'بەرخۆدانم',
          color2: songNewWordColor,
        ),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Xudan çek û çeper bim',
        ),
        SoraniLyricText(
          text1: 'خاوەن ',
          text2: 'چەک و ',
          text3: 'قەڵخان ',
          text4: 'بم',
          color1: songNewWordColor,
          color3: songNewWordColor,
        ),

        lyricSmallText(text: 'li Şingalê û Kobanê'),
        KurmanjiLyricText(text1: 'ل شنگەلێ و کۆبانێ'),
        SoraniLyricText(text1: 'لە شنگال و کۆبانێ'),

        lyricSmallText(text: 'Can goriyê Kurda bim'),
        KurmanjiLyricText(text1: 'جان گۆری یێ ', text2: 'کوردا بم', color1: songNewWordColor),
        SoraniLyricText(text1: 'گیان فیدای ', text2: 'کوردان بم', color1: songNewWordColor),
        lyricSmallText(text: 'weke şêra li meydanê'),
        KurmanjiLyricText(
          text1: 'وەکە شێرا ل مەیدانێ',
        ),
        SoraniLyricText(
          text1: 'وەکو شێری ناو مەیدان',
        ),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Tu hatîye şerê min',
        ),
        KurmanjiLyricText(
          text1: 'تو هاتییە شەڕی من',
        ),
        SoraniLyricText(
          text1: 'تۆ هاتویتە شەڕی من',
        ),
        lyricSmallText(
          text: 'Xudanê vê axê me',
        ),
        KurmanjiLyricText(
          text1: 'خودانێ ',
          text2: 'ڤێ ئاخێ',
          text3: ' مە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'خاوەنی',
          text2: ' ئەم خاکە',
          color2: songNewWordColor,
          text3: 'م',
        ),

        lyricSmallText(
          text: 'Swînd bo te neşîye min',
        ),
        KurmanjiLyricText(
          text1: 'سویند بۆ تە نەشیە من',
        ),
        SoraniLyricText(
          text1: 'سویند بێت تۆ نەشیاوی منی',
        ),
        lyricSmallText(
          text: 'pêşmerga şoreşê me',
        ),
        KurmanjiLyricText(
          text1: 'پێشمەرگا شۆڕشێ مە',
        ),
        SoraniLyricText(
          text1: 'من پێشمەرگەی شۆڕشم',
        ),
        //break

        oneLine(),
        lyricSmallText(
          text: 'Tu hatîye şerê min',
        ),
        KurmanjiLyricText(
          text1: 'تو هاتییە شەڕی من',
        ),
        SoraniLyricText(
          text1: 'تۆ هاتویتە شەڕی من',
        ),
        lyricSmallText(
          text: 'Xudanê vê axê me',
        ),
        KurmanjiLyricText(
          text1: 'خودانێ ',
          text2: 'ڤێ ئاخێ',
          text3: ' مە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'خاوەنی',
          text2: ' ئەم خاکە',
          color2: songNewWordColor,
          text3: 'م',
        ),

        lyricSmallText(
          text: 'Swînd bo te neşîye min',
        ),
        KurmanjiLyricText(
          text1: 'سویند بۆ تە نەشیە من',
        ),
        SoraniLyricText(
          text1: 'سویند بێت تۆ نەشیاوی منی',
        ),
        lyricSmallText(
          text: 'pêşmerga şoreşê me',
        ),
        KurmanjiLyricText(
          text1: 'پێشمەرگا شۆڕشێ مە',
        ),
        SoraniLyricText(
          text1: 'من پێشمەرگەی شۆڕشم',
        ),

        oneLine(),
        lyricSmallText(
          text: 'Tu nahî hemberî min',
        ),
        KurmanjiLyricText(
          text1: 'تو ',
          text2: 'ناهی هەمبەری ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        KurmanjiLyricText(
          text1: 'تۆ ',
          text2: 'ناییەتە ئاستی ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        lyricSmallText(
          text: 'ez bilinya rojê me',
        ),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'بڵنیا ',
          color2: songNewWordColor,
          text3: 'ڕۆژێ مە',
        ),
        SoraniLyricText(
          text1: 'من هێندەی خۆر ',
          text2: 'بڵندم',
          color2: songNewWordColor,
        ),
        lyricSmallText(
          text: 'Tu nahî hemberî min',
        ),
        KurmanjiLyricText(
          text1: 'تو ',
          text2: 'ناهی هەمبەری ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        KurmanjiLyricText(
          text1: 'تۆ ',
          text2: 'ناییەتە ئاستی ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        lyricSmallText(
          text: 'ez bilinya rojê me',
        ),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'بڵنیا ',
          color2: songNewWordColor,
          text3: 'ڕۆژێ مە',
        ),
        SoraniLyricText(
          text1: 'من هێندەی خۆر ',
          text2: 'بڵندم',
          color2: songNewWordColor,
        ),
        lyricSmallText(
          text: 'Direvî ji ber sîngê min',
        ),
        KurmanjiLyricText(
          text1: 'درەڤی ',
          color1: songNewWordColor,
          text2: 'ژ بەر سنگێ من',
        ),
        SoraniLyricText(
          text1: 'تێدەپەڕێت ',
          color1: songNewWordColor,
          text2: 'لەبەر سنگی من',
        ),
        lyricSmallText(
          text: 'Dicle û Furat û Zême',
        ),
        KurmanjiLyricText(
          text1: 'دیجلە و فوڕات و زێمە ',
        ),
        SoraniLyricText(
          text1: 'دیجلە و فوڕات و زێمە',
        ),
        lyricSmallText(
          text: 'Direvî ji ber sîngê min',
        ),
        KurmanjiLyricText(
          text1: 'درەڤی ',
          color1: songNewWordColor,
          text2: 'ژ بەر سنگێ من',
        ),
        SoraniLyricText(
          text1: 'تێدەپەڕێت ',
          color1: songNewWordColor,
          text2: 'لەبەر سنگی من',
        ),
        lyricSmallText(
          text: 'Dicle û Furat û Zême',
        ),
        SoraniLyricText(
          text1: 'دیجلە و فوڕات و زێمە ',
        ),
        lyricSmallText(
          text: 'دیجلە و فوڕات و زێمە',
        ),
        //break

        oneLine(),

        lyricSmallText(
          text: 'Min divêt pêşmerge bim',
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'دەبێت ',
          text3: 'پێشمەرگە بم',
          color2: songNewWordColor,
        ),
        lyricSmallText(text: 'pêşmergê Kurdistanê'),
        KurmanjiLyricText(
          text1: 'پێشمەرگە کوردستانێ',
        ),
        SoraniLyricText(
          text1: 'پێشمەرگەی کوردستان',
        ),
        lyricSmallText(text: 'Cihê şerî u ez hebim'),
        KurmanjiLyricText(
          text1: 'جهێ ',
          color1: songNewWordColor,
          text2: 'شەڕی و ئەز هەبم',
        ),
        SoraniLyricText(
          text1: 'لەجێگەی ',
          color1: songNewWordColor,
          text2: 'شەڕدا من هەبم',
        ),
        lyricSmallText(text: 'ez kela berxwedanê'),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'کەلا ',
          text3: 'بەرخوەدانێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'قەڵای ',
          text3: 'بەرخۆدانم',
          color2: songNewWordColor,
        ),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Xudan çek û çeper bim',
        ),
        SoraniLyricText(
          text1: 'خاوەن ',
          text2: 'چەک و ',
          text3: 'قەڵخان ',
          text4: 'بم',
          color1: songNewWordColor,
          color3: songNewWordColor,
        ),

        lyricSmallText(text: 'li Şingalê û Kobanê'),
        KurmanjiLyricText(text1: 'ل شنگەلێ و کۆبانێ'),
        SoraniLyricText(text1: 'لە شنگال و کۆبانێ'),

        lyricSmallText(text: 'Can goriyê Kurda bim'),
        KurmanjiLyricText(text1: 'جان گۆری یێ ', text2: 'کوردا بم', color1: songNewWordColor),
        SoraniLyricText(text1: 'گیان فیدای ', text2: 'کوردان بم', color1: songNewWordColor),
        lyricSmallText(text: 'weke şêra li meydanê'),
        KurmanjiLyricText(
          text1: 'وەکە شێرا ل مەیدانێ',
        ),
        SoraniLyricText(
          text1: 'وەکو شێری ناو مەیدان',
        ),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Tu hatîye şerê min',
        ),
        KurmanjiLyricText(
          text1: 'تو هاتییە شەڕی من',
        ),
        SoraniLyricText(
          text1: 'تۆ هاتویتە شەڕی من',
        ),
        lyricSmallText(
          text: 'Xudanê vê axê me',
        ),
        KurmanjiLyricText(
          text1: 'خودانێ ',
          text2: 'ڤێ ئاخێ',
          text3: ' مە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'خاوەنی',
          text2: ' ئەم خاکە',
          color2: songNewWordColor,
          text3: 'م',
        ),

        lyricSmallText(
          text: 'Swînd bo te neşîye min',
        ),
        KurmanjiLyricText(
          text1: 'سویند بۆ تە نەشیە من',
        ),
        SoraniLyricText(
          text1: 'سویند بێت تۆ نەشیاوی منی',
        ),
        lyricSmallText(
          text: 'pêşmerga şoreşê me',
        ),
        KurmanjiLyricText(
          text1: 'پێشمەرگا شۆڕشێ مە',
        ),
        SoraniLyricText(
          text1: 'من پێشمەرگەی شۆڕشم',
        ),
        //break

        oneLine(),
        lyricSmallText(
          text: 'Tu hatîye şerê min',
        ),
        KurmanjiLyricText(
          text1: 'تو هاتییە شەڕی من',
        ),
        SoraniLyricText(
          text1: 'تۆ هاتویتە شەڕی من',
        ),
        lyricSmallText(
          text: 'Xudanê vê axê me',
        ),
        KurmanjiLyricText(
          text1: 'خودانێ ',
          text2: 'ڤێ ئاخێ',
          text3: ' مە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'خاوەنی',
          text2: ' ئەم خاکە',
          color2: songNewWordColor,
          text3: 'م',
        ),

        lyricSmallText(
          text: 'Swînd bo te neşîye min',
        ),
        KurmanjiLyricText(
          text1: 'سویند بۆ تە نەشیە من',
        ),
        SoraniLyricText(
          text1: 'سویند بێت تۆ نەشیاوی منی',
        ),
        lyricSmallText(
          text: 'pêşmerga şoreşê me',
        ),
        KurmanjiLyricText(
          text1: 'پێشمەرگا شۆڕشێ مە',
        ),
        SoraniLyricText(
          text1: 'من پێشمەرگەی شۆڕشم',
        ),

        oneLine(),
        lyricSmallText(
          text: 'Tu nahî hemberî min',
        ),
        KurmanjiLyricText(
          text1: 'تو ',
          text2: 'ناهی هەمبەری ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        KurmanjiLyricText(
          text1: 'تۆ ',
          text2: 'ناییەتە ئاستی ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        lyricSmallText(
          text: 'ez bilinya rojê me',
        ),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'بڵنیا ',
          color2: songNewWordColor,
          text3: 'ڕۆژێ مە',
        ),
        SoraniLyricText(
          text1: 'من هێندەی خۆر ',
          text2: 'بڵندم',
          color2: songNewWordColor,
        ),
        lyricSmallText(
          text: 'Direvî ji ber sîngê min',
        ),
        KurmanjiLyricText(
          text1: 'درەڤی ',
          color1: songNewWordColor,
          text2: 'ژ بەر سنگێ من',
        ),
        SoraniLyricText(
          text1: 'تێدەپەڕێت ',
          color1: songNewWordColor,
          text2: 'لەبەر سنگی من',
        ),
        lyricSmallText(
          text: 'Dicle û Furat û Zême',
        ),
        SoraniLyricText(
          text1: 'دیجلە و فوڕات و زێمە ',
        ),
        lyricSmallText(
          text: 'دیجلە و فوڕات و زێمە',
        ),
        //break

        oneLine(),

        lyricSmallText(
          text: 'Min divêt pêşmerge bim',
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'دەبێت ',
          text3: 'پێشمەرگە بم',
          color2: songNewWordColor,
        ),
        lyricSmallText(text: 'pêşmergê Kurdistanê'),
        KurmanjiLyricText(
          text1: 'پێشمەرگە کوردستانێ',
        ),
        SoraniLyricText(
          text1: 'پێشمەرگەی کوردستان',
        ),
        lyricSmallText(text: 'Cihê şerî u ez hebim'),
        KurmanjiLyricText(
          text1: 'جهێ ',
          color1: songNewWordColor,
          text2: 'شەڕی و ئەز هەبم',
        ),
        SoraniLyricText(
          text1: 'لەجێگەی ',
          color1: songNewWordColor,
          text2: 'شەڕدا من هەبم',
        ),
        lyricSmallText(text: 'ez kela berxwedanê'),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'کەلا ',
          text3: 'بەرخوەدانێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'قەڵای ',
          text3: 'بەرخۆدانم',
          color2: songNewWordColor,
        ),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Xudan çek û çeper bim',
        ),
        SoraniLyricText(
          text1: 'خاوەن ',
          text2: 'چەک و ',
          text3: 'قەڵخان ',
          text4: 'بم',
          color1: songNewWordColor,
          color3: songNewWordColor,
        ),

        lyricSmallText(text: 'li Şingalê û Kobanê'),
        KurmanjiLyricText(text1: 'ل شنگەلێ و کۆبانێ'),
        SoraniLyricText(text1: 'لە شنگال و کۆبانێ'),

        lyricSmallText(text: 'Can goriyê Kurda bim'),
        KurmanjiLyricText(text1: 'جان گۆری یێ ', text2: 'کوردا بم', color1: songNewWordColor),
        SoraniLyricText(text1: 'گیان فیدای ', text2: 'کوردان بم', color1: songNewWordColor),
        lyricSmallText(text: 'weke şêra li meydanê'),
        KurmanjiLyricText(
          text1: 'وەکە شێرا ل مەیدانێ',
        ),
        SoraniLyricText(
          text1: 'وەکو شێری ناو مەیدان',
        ),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Tu hatîye şerê min',
        ),
        KurmanjiLyricText(
          text1: 'تو هاتییە شەڕی من',
        ),
        SoraniLyricText(
          text1: 'تۆ هاتویتە شەڕی من',
        ),
        lyricSmallText(
          text: 'Xudanê vê axê me',
        ),
        KurmanjiLyricText(
          text1: 'خودانێ ',
          text2: 'ڤێ ئاخێ',
          text3: ' مە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'خاوەنی',
          text2: ' ئەم خاکە',
          color2: songNewWordColor,
          text3: 'م',
        ),

        lyricSmallText(
          text: 'Swînd bo te neşîye min',
        ),
        KurmanjiLyricText(
          text1: 'سویند بۆ تە نەشیە من',
        ),
        SoraniLyricText(
          text1: 'سویند بێت تۆ نەشیاوی منی',
        ),
        lyricSmallText(
          text: 'pêşmerga şoreşê me',
        ),
        KurmanjiLyricText(
          text1: 'پێشمەرگا شۆڕشێ مە',
        ),
        SoraniLyricText(
          text1: 'من پێشمەرگەی شۆڕشم',
        ),

        oneLine(),
        lyricSmallText(
          text: 'Tu nahî hemberî min',
        ),
        KurmanjiLyricText(
          text1: 'تو ',
          text2: 'ناهی هەمبەری ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        KurmanjiLyricText(
          text1: 'تۆ ',
          text2: 'ناییەتە ئاستی ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        lyricSmallText(
          text: 'ez bilinya rojê me',
        ),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'بڵنیا ',
          color2: songNewWordColor,
          text3: 'ڕۆژێ مە',
        ),
        SoraniLyricText(
          text1: 'من هێندەی خۆر ',
          text2: 'بڵندم',
          color2: songNewWordColor,
        ),
        lyricSmallText(
          text: 'Direvî ji ber sîngê min',
        ),
        KurmanjiLyricText(
          text1: 'درەڤی ',
          color1: songNewWordColor,
          text2: 'ژ بەر سنگێ من',
        ),
        SoraniLyricText(
          text1: 'تێدەپەڕێت ',
          color1: songNewWordColor,
          text2: 'لەبەر سنگی من',
        ),
        lyricSmallText(
          text: 'Dicle û Furat û Zême',
        ),
        SoraniLyricText(
          text1: 'دیجلە و فوڕات و زێمە ',
        ),
        lyricSmallText(
          text: 'دیجلە و فوڕات و زێمە',
        ),
        //break

        oneLine(),

        lyricSmallText(
          text: 'Min divêt pêşmerge bim',
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'دەبێت ',
          text3: 'پێشمەرگە بم',
          color2: songNewWordColor,
        ),
        lyricSmallText(text: 'pêşmergê Kurdistanê'),
        KurmanjiLyricText(
          text1: 'پێشمەرگە کوردستانێ',
        ),
        SoraniLyricText(
          text1: 'پێشمەرگەی کوردستان',
        ),
        lyricSmallText(text: 'Cihê şerî u ez hebim'),
        KurmanjiLyricText(
          text1: 'جهێ ',
          color1: songNewWordColor,
          text2: 'شەڕی و ئەز هەبم',
        ),
        SoraniLyricText(
          text1: 'لەجێگەی ',
          color1: songNewWordColor,
          text2: 'شەڕدا من هەبم',
        ),
        lyricSmallText(text: 'ez kela berxwedanê'),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'کەلا ',
          text3: 'بەرخوەدانێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'قەڵای ',
          text3: 'بەرخۆدانم',
          color2: songNewWordColor,
        ),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Xudan çek û çeper bim',
        ),
        SoraniLyricText(
          text1: 'خاوەن ',
          text2: 'چەک و ',
          text3: 'قەڵخان ',
          text4: 'بم',
          color1: songNewWordColor,
          color3: songNewWordColor,
        ),

        lyricSmallText(text: 'li Şingalê û Kobanê'),
        KurmanjiLyricText(text1: 'ل شنگەلێ و کۆبانێ'),
        SoraniLyricText(text1: 'لە شنگال و کۆبانێ'),

        lyricSmallText(text: 'Can goriyê Kurda bim'),
        KurmanjiLyricText(text1: 'جان گۆری یێ ', text2: 'کوردا بم', color1: songNewWordColor),
        SoraniLyricText(text1: 'گیان فیدای ', text2: 'کوردان بم', color1: songNewWordColor),
        lyricSmallText(text: 'weke şêra li meydanê'),
        KurmanjiLyricText(
          text1: 'وەکە شێرا ل مەیدانێ',
        ),
        SoraniLyricText(
          text1: 'وەکو شێری ناو مەیدان',
        ),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Tu hatîye şerê min',
        ),
        KurmanjiLyricText(
          text1: 'تو هاتییە شەڕی من',
        ),
        SoraniLyricText(
          text1: 'تۆ هاتویتە شەڕی من',
        ),
        lyricSmallText(
          text: 'Xudanê vê axê me',
        ),
        KurmanjiLyricText(
          text1: 'خودانێ ',
          text2: 'ڤێ ئاخێ',
          text3: ' مە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'خاوەنی',
          text2: ' ئەم خاکە',
          color2: songNewWordColor,
          text3: 'م',
        ),

        lyricSmallText(
          text: 'Swînd bo te neşîye min',
        ),
        KurmanjiLyricText(
          text1: 'سویند بۆ تە نەشیە من',
        ),
        SoraniLyricText(
          text1: 'سویند بێت تۆ نەشیاوی منی',
        ),
        lyricSmallText(
          text: 'pêşmerga şoreşê me',
        ),
        KurmanjiLyricText(
          text1: 'پێشمەرگا شۆڕشێ مە',
        ),
        SoraniLyricText(
          text1: 'من پێشمەرگەی شۆڕشم',
        ),

        oneLine(),
        lyricSmallText(
          text: 'Tu nahî hemberî min',
        ),
        KurmanjiLyricText(
          text1: 'تو ',
          text2: 'ناهی هەمبەری ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        KurmanjiLyricText(
          text1: 'تۆ ',
          text2: 'ناییەتە ئاستی ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        lyricSmallText(
          text: 'ez bilinya rojê me',
        ),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'بڵنیا ',
          color2: songNewWordColor,
          text3: 'ڕۆژێ مە',
        ),
        SoraniLyricText(
          text1: 'من هێندەی خۆر ',
          text2: 'بڵندم',
          color2: songNewWordColor,
        ),
        lyricSmallText(
          text: 'Direvî ji ber sîngê min',
        ),
        KurmanjiLyricText(
          text1: 'درەڤی ',
          color1: songNewWordColor,
          text2: 'ژ بەر سنگێ من',
        ),
        SoraniLyricText(
          text1: 'تێدەپەڕێت ',
          color1: songNewWordColor,
          text2: 'لەبەر سنگی من',
        ),
        lyricSmallText(
          text: 'Dicle û Furat û Zême',
        ),
        SoraniLyricText(
          text1: 'دیجلە و فوڕات و زێمە ',
        ),
        lyricSmallText(
          text: 'دیجلە و فوڕات و زێمە',
        ),
        //break

        oneLine(),

        lyricSmallText(
          text: 'Min divêt pêşmerge bim',
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'دەبێت ',
          text3: 'پێشمەرگە بم',
          color2: songNewWordColor,
        ),
        lyricSmallText(text: 'pêşmergê Kurdistanê'),
        KurmanjiLyricText(
          text1: 'پێشمەرگە کوردستانێ',
        ),
        SoraniLyricText(
          text1: 'پێشمەرگەی کوردستان',
        ),
        lyricSmallText(text: 'Cihê şerî u ez hebim'),
        KurmanjiLyricText(
          text1: 'جهێ ',
          color1: songNewWordColor,
          text2: 'شەڕی و ئەز هەبم',
        ),
        SoraniLyricText(
          text1: 'لەجێگەی ',
          color1: songNewWordColor,
          text2: 'شەڕدا من هەبم',
        ),
        lyricSmallText(text: 'ez kela berxwedanê'),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'کەلا ',
          text3: 'بەرخوەدانێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'قەڵای ',
          text3: 'بەرخۆدانم',
          color2: songNewWordColor,
        ),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Xudan çek û çeper bim',
        ),
        SoraniLyricText(
          text1: 'خاوەن ',
          text2: 'چەک و ',
          text3: 'قەڵخان ',
          text4: 'بم',
          color1: songNewWordColor,
          color3: songNewWordColor,
        ),

        lyricSmallText(text: 'li Şingalê û Kobanê'),
        KurmanjiLyricText(text1: 'ل شنگەلێ و کۆبانێ'),
        SoraniLyricText(text1: 'لە شنگال و کۆبانێ'),

        lyricSmallText(text: 'Can goriyê Kurda bim'),
        KurmanjiLyricText(text1: 'جان گۆری یێ ', text2: 'کوردا بم', color1: songNewWordColor),
        SoraniLyricText(text1: 'گیان فیدای ', text2: 'کوردان بم', color1: songNewWordColor),
        lyricSmallText(text: 'weke şêra li meydanê'),
        KurmanjiLyricText(
          text1: 'وەکە شێرا ل مەیدانێ',
        ),
        SoraniLyricText(
          text1: 'وەکو شێری ناو مەیدان',
        ),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Tu hatîye şerê min',
        ),
        KurmanjiLyricText(
          text1: 'تو هاتییە شەڕی من',
        ),
        SoraniLyricText(
          text1: 'تۆ هاتویتە شەڕی من',
        ),
        lyricSmallText(
          text: 'Xudanê vê axê me',
        ),
        KurmanjiLyricText(
          text1: 'خودانێ ',
          text2: 'ڤێ ئاخێ',
          text3: ' مە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'خاوەنی',
          text2: ' ئەم خاکە',
          color2: songNewWordColor,
          text3: 'م',
        ),

        lyricSmallText(
          text: 'Swînd bo te neşîye min',
        ),
        KurmanjiLyricText(
          text1: 'سویند بۆ تە نەشیە من',
        ),
        SoraniLyricText(
          text1: 'سویند بێت تۆ نەشیاوی منی',
        ),
        lyricSmallText(
          text: 'pêşmerga şoreşê me',
        ),
        KurmanjiLyricText(
          text1: 'پێشمەرگا شۆڕشێ مە',
        ),
        SoraniLyricText(
          text1: 'من پێشمەرگەی شۆڕشم',
        ),

        oneLine(),
        lyricSmallText(
          text: 'Tu nahî hemberî min',
        ),
        KurmanjiLyricText(
          text1: 'تو ',
          text2: 'ناهی هەمبەری ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        KurmanjiLyricText(
          text1: 'تۆ ',
          text2: 'ناییەتە ئاستی ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        lyricSmallText(
          text: 'ez bilinya rojê me',
        ),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'بڵنیا ',
          color2: songNewWordColor,
          text3: 'ڕۆژێ مە',
        ),
        SoraniLyricText(
          text1: 'من هێندەی خۆر ',
          text2: 'بڵندم',
          color2: songNewWordColor,
        ),
        lyricSmallText(
          text: 'Direvî ji ber sîngê min',
        ),
        KurmanjiLyricText(
          text1: 'درەڤی ',
          color1: songNewWordColor,
          text2: 'ژ بەر سنگێ من',
        ),
        SoraniLyricText(
          text1: 'تێدەپەڕێت ',
          color1: songNewWordColor,
          text2: 'لەبەر سنگی من',
        ),
        lyricSmallText(
          text: 'Dicle û Furat û Zême',
        ),
        SoraniLyricText(
          text1: 'دیجلە و فوڕات و زێمە ',
        ),
        lyricSmallText(
          text: 'دیجلە و فوڕات و زێمە',
        ),
        //break

        oneLine(),

        lyricSmallText(
          text: 'Min divêt pêşmerge bim',
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'دەبێت ',
          text3: 'پێشمەرگە بم',
          color2: songNewWordColor,
        ),
        lyricSmallText(text: 'pêşmergê Kurdistanê'),
        KurmanjiLyricText(
          text1: 'پێشمەرگە کوردستانێ',
        ),
        SoraniLyricText(
          text1: 'پێشمەرگەی کوردستان',
        ),
        lyricSmallText(text: 'Cihê şerî u ez hebim'),
        KurmanjiLyricText(
          text1: 'جهێ ',
          color1: songNewWordColor,
          text2: 'شەڕی و ئەز هەبم',
        ),
        SoraniLyricText(
          text1: 'لەجێگەی ',
          color1: songNewWordColor,
          text2: 'شەڕدا من هەبم',
        ),
        lyricSmallText(text: 'ez kela berxwedanê'),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'کەلا ',
          text3: 'بەرخوەدانێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'قەڵای ',
          text3: 'بەرخۆدانم',
          color2: songNewWordColor,
        ),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Xudan çek û çeper bim',
        ),
        SoraniLyricText(
          text1: 'خاوەن ',
          text2: 'چەک و ',
          text3: 'قەڵخان ',
          text4: 'بم',
          color1: songNewWordColor,
          color3: songNewWordColor,
        ),

        lyricSmallText(text: 'li Şingalê û Kobanê'),
        KurmanjiLyricText(text1: 'ل شنگەلێ و کۆبانێ'),
        SoraniLyricText(text1: 'لە شنگال و کۆبانێ'),

        lyricSmallText(text: 'Can goriyê Kurda bim'),
        KurmanjiLyricText(text1: 'جان گۆری یێ ', text2: 'کوردا بم', color1: songNewWordColor),
        SoraniLyricText(text1: 'گیان فیدای ', text2: 'کوردان بم', color1: songNewWordColor),
        lyricSmallText(text: 'weke şêra li meydanê'),
        KurmanjiLyricText(
          text1: 'وەکە شێرا ل مەیدانێ',
        ),
        SoraniLyricText(
          text1: 'وەکو شێری ناو مەیدان',
        ),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Tu hatîye şerê min',
        ),
        KurmanjiLyricText(
          text1: 'تو هاتییە شەڕی من',
        ),
        SoraniLyricText(
          text1: 'تۆ هاتویتە شەڕی من',
        ),
        lyricSmallText(
          text: 'Xudanê vê axê me',
        ),
        KurmanjiLyricText(
          text1: 'خودانێ ',
          text2: 'ڤێ ئاخێ',
          text3: ' مە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'خاوەنی',
          text2: ' ئەم خاکە',
          color2: songNewWordColor,
          text3: 'م',
        ),

        lyricSmallText(
          text: 'Swînd bo te neşîye min',
        ),
        KurmanjiLyricText(
          text1: 'سویند بۆ تە نەشیە من',
        ),
        SoraniLyricText(
          text1: 'سویند بێت تۆ نەشیاوی منی',
        ),
        lyricSmallText(
          text: 'pêşmerga şoreşê me',
        ),
        KurmanjiLyricText(
          text1: 'پێشمەرگا شۆڕشێ مە',
        ),
        SoraniLyricText(
          text1: 'من پێشمەرگەی شۆڕشم',
        ),

        oneLine(),
        lyricSmallText(
          text: 'Tu nahî hemberî min',
        ),
        KurmanjiLyricText(
          text1: 'تو ',
          text2: 'ناهی هەمبەری ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        KurmanjiLyricText(
          text1: 'تۆ ',
          text2: 'ناییەتە ئاستی ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        lyricSmallText(
          text: 'ez bilinya rojê me',
        ),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'بڵنیا ',
          color2: songNewWordColor,
          text3: 'ڕۆژێ مە',
        ),
        SoraniLyricText(
          text1: 'من هێندەی خۆر ',
          text2: 'بڵندم',
          color2: songNewWordColor,
        ),
        lyricSmallText(
          text: 'Direvî ji ber sîngê min',
        ),
        KurmanjiLyricText(
          text1: 'درەڤی ',
          color1: songNewWordColor,
          text2: 'ژ بەر سنگێ من',
        ),
        SoraniLyricText(
          text1: 'تێدەپەڕێت ',
          color1: songNewWordColor,
          text2: 'لەبەر سنگی من',
        ),
        lyricSmallText(
          text: 'Dicle û Furat û Zême',
        ),
        SoraniLyricText(
          text1: 'دیجلە و فوڕات و زێمە ',
        ),
        lyricSmallText(
          text: 'دیجلە و فوڕات و زێمە',
        ),
        //break

        oneLine(),

        lyricSmallText(
          text: 'Min divêt pêşmerge bim',
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'دەبێت ',
          text3: 'پێشمەرگە بم',
          color2: songNewWordColor,
        ),
        lyricSmallText(text: 'pêşmergê Kurdistanê'),
        KurmanjiLyricText(
          text1: 'پێشمەرگە کوردستانێ',
        ),
        SoraniLyricText(
          text1: 'پێشمەرگەی کوردستان',
        ),
        lyricSmallText(text: 'Cihê şerî u ez hebim'),
        KurmanjiLyricText(
          text1: 'جهێ ',
          color1: songNewWordColor,
          text2: 'شەڕی و ئەز هەبم',
        ),
        SoraniLyricText(
          text1: 'لەجێگەی ',
          color1: songNewWordColor,
          text2: 'شەڕدا من هەبم',
        ),
        lyricSmallText(text: 'ez kela berxwedanê'),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'کەلا ',
          text3: 'بەرخوەدانێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'قەڵای ',
          text3: 'بەرخۆدانم',
          color2: songNewWordColor,
        ),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Xudan çek û çeper bim',
        ),
        SoraniLyricText(
          text1: 'خاوەن ',
          text2: 'چەک و ',
          text3: 'قەڵخان ',
          text4: 'بم',
          color1: songNewWordColor,
          color3: songNewWordColor,
        ),

        lyricSmallText(text: 'li Şingalê û Kobanê'),
        KurmanjiLyricText(text1: 'ل شنگەلێ و کۆبانێ'),
        SoraniLyricText(text1: 'لە شنگال و کۆبانێ'),

        lyricSmallText(text: 'Can goriyê Kurda bim'),
        KurmanjiLyricText(text1: 'جان گۆری یێ ', text2: 'کوردا بم', color1: songNewWordColor),
        SoraniLyricText(text1: 'گیان فیدای ', text2: 'کوردان بم', color1: songNewWordColor),
        lyricSmallText(text: 'weke şêra li meydanê'),
        KurmanjiLyricText(
          text1: 'وەکە شێرا ل مەیدانێ',
        ),
        SoraniLyricText(
          text1: 'وەکو شێری ناو مەیدان',
        ),

        //break
        oneLine(),
        lyricSmallText(
          text: 'Tu hatîye şerê min',
        ),
        KurmanjiLyricText(
          text1: 'تو هاتییە شەڕی من',
        ),
        SoraniLyricText(
          text1: 'تۆ هاتویتە شەڕی من',
        ),
        lyricSmallText(
          text: 'Xudanê vê axê me',
        ),
        KurmanjiLyricText(
          text1: 'خودانێ ',
          text2: 'ڤێ ئاخێ',
          text3: ' مە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'خاوەنی',
          text2: ' ئەم خاکە',
          color2: songNewWordColor,
          text3: 'م',
        ),

        lyricSmallText(
          text: 'Swînd bo te neşîye min',
        ),
        KurmanjiLyricText(
          text1: 'سویند بۆ تە نەشیە من',
        ),
        SoraniLyricText(
          text1: 'سویند بێت تۆ نەشیاوی منی',
        ),
        lyricSmallText(
          text: 'pêşmerga şoreşê me',
        ),
        KurmanjiLyricText(
          text1: 'پێشمەرگا شۆڕشێ مە',
        ),
        SoraniLyricText(
          text1: 'من پێشمەرگەی شۆڕشم',
        ),

        oneLine(),
        lyricSmallText(
          text: 'Tu nahî hemberî min',
        ),
        KurmanjiLyricText(
          text1: 'تو ',
          text2: 'ناهی هەمبەری ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        KurmanjiLyricText(
          text1: 'تۆ ',
          text2: 'ناییەتە ئاستی ',
          color2: songNewWordColor,
          text3: 'من',
        ),
        lyricSmallText(
          text: 'ez bilinya rojê me',
        ),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'بڵنیا ',
          color2: songNewWordColor,
          text3: 'ڕۆژێ مە',
        ),
        SoraniLyricText(
          text1: 'من هێندەی خۆر ',
          text2: 'بڵندم',
          color2: songNewWordColor,
        ),
        lyricSmallText(
          text: 'Direvî ji ber sîngê min',
        ),
        KurmanjiLyricText(
          text1: 'درەڤی ',
          color1: songNewWordColor,
          text2: 'ژ بەر سنگێ من',
        ),
        SoraniLyricText(
          text1: 'تێدەپەڕێت ',
          color1: songNewWordColor,
          text2: 'لەبەر سنگی من',
        ),
        lyricSmallText(
          text: 'Dicle û Furat û Zême',
        ),
        SoraniLyricText(
          text1: 'دیجلە و فوڕات و زێمە ',
        ),
        lyricSmallText(
          text: 'دیجلە و فوڕات و زێمە',
        ),
        //break

        oneLine(),

        lyricSmallText(
          text: 'Min divêt pêşmerge bim',
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'دەبێت ',
          text3: 'پێشمەرگە بم',
          color2: songNewWordColor,
        ),
        lyricSmallText(text: 'pêşmergê Kurdistanê'),
        KurmanjiLyricText(
          text1: 'پێشمەرگە کوردستانێ',
        ),
        SoraniLyricText(
          text1: 'پێشمەرگەی کوردستان',
        ),
        lyricSmallText(text: 'Cihê şerî u ez hebim'),
        KurmanjiLyricText(
          text1: 'جهێ ',
          color1: songNewWordColor,
          text2: 'شەڕی و ئەز هەبم',
        ),
        SoraniLyricText(
          text1: 'لەجێگەی ',
          color1: songNewWordColor,
          text2: 'شەڕدا من هەبم',
        ),
        lyricSmallText(text: 'ez kela berxwedanê'),
        KurmanjiLyricText(
          text1: 'ئەز ',
          text2: 'کەلا ',
          text3: 'بەرخوەدانێ',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'من ',
          text2: 'قەڵای ',
          text3: 'بەرخۆدانم',
          color2: songNewWordColor,
        ),
        //break
        oneLine(),
        lyricSmallText(
          text: 'Xudan çek û çeper bim',
        ),
        SoraniLyricText(
          text1: 'خاوەن ',
          text2: 'چەک و ',
          text3: 'قەڵخان ',
          text4: 'بم',
          color1: songNewWordColor,
          color3: songNewWordColor,
        ),

        lyricSmallText(text: 'li Şingalê û Kobanê'),
        KurmanjiLyricText(text1: 'ل شنگەلێ و کۆبانێ'),
        SoraniLyricText(text1: 'لە شنگال و کۆبانێ'),

        lyricSmallText(text: 'Can goriyê Kurda bim'),
        KurmanjiLyricText(text1: 'جان گۆری یێ ', text2: 'کوردا بم', color1: songNewWordColor),
        SoraniLyricText(text1: 'گیان فیدای ', text2: 'کوردان بم', color1: songNewWordColor),
        lyricSmallText(text: 'weke şêra li meydanê'),
        KurmanjiLyricText(
          text1: 'وەکە شێرا ل مەیدانێ',
        ),
        SoraniLyricText(
          text1: 'وەکو شێری ناو مەیدان',
        ),

        const SizedBox(
          height: 40,
        ),
      ],
    );

//Complete
felekL() => Column(
      children: [
//Title text
        lyricBigText(
          text: 'فەلەک دۆستم',
        ),
        singerName('جوان حاجۆ'),
        const SizedBox(height: 50),

//Section
        lyricSmallText(
          text: 'Felek çendî li me zalim Bû',
        ),
        KurmanjiLyricText(
          text1: 'فەلەک چەندی ',
          text2: 'ل مە',
          text3: ' زالم بوو',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'فەلەک چەند',
          color2: songNewWordColor,
          text2: ' بۆ ئێمە ',
          text3: 'زاڵم بوو',
        ),

//Section
        lyricSmallText(
          text: 'Yar yar yar',
        ),
        KurmanjiLyricText(text1: 'یار یار یار'),

//Section
        lyricSmallText(
          text: 'Derde me çendî giran Bû',
        ),
        KurmanjiLyricText(
          text1: 'دەردی ',
          text2: 'مە',
          color2: songNewWordColor,
          text3: ' چەندی گران بوو',
        ),
        SoraniLyricText(
          text1: 'دەردی ',
          text2: 'ئێمە',
          color2: songNewWordColor,
          text3: ' چەندە گران بوو',
        ),

//Section
        lyricSmallText(
          text: 'Yar yar yar',
        ),
        KurmanjiLyricText(text1: 'یار یار یار'),

//Section
        lyricSmallText(
          text: 'Derman nema hekîm nema',
        ),
        KurmanjiLyricText(text1: 'دەرمان نەما حەکیم نەما'),
        SoraniLyricText(text1: 'دەرمان نەما حەکیم نەما'),

//Section
        lyricSmallText(
          text: 'Ve eşe derxe ji dil X3',
        ),
        KurmanjiLyricText(
          text1: 'ڤ ',
          text2: 'ئێشە دەرخە',
          color1: songNewWordColor,
          text3: ' ژ ',
          color3: songNewWordColor,
          text4: 'دل',
        ),
        SoraniLyricText(
          text1: 'ئەم ',
          text2: 'ئێشە دەرخات',
          color1: songNewWordColor,
          text3: ' لە ',
          color3: songNewWordColor,
          text4: 'دڵ',
        ),

        lyricSmallText(
          text: 'Ve eşe derxe ji dil X3',
        ),
        KurmanjiLyricText(text1: 'ڤ ئێشە دەرخە ژ دل'),
        SoraniLyricText(text1: 'ئەم ئێشە دەرخات لە دڵ'),

        lyricSmallText(
          text: 'Ve eşe derxe ji dil X3',
        ),
        KurmanjiLyricText(text1: 'ڤ ئێشە دەرخە ژ دل'),
        SoraniLyricText(text1: 'ئەم ئێشە دەرخات لە دڵ'),

//Section
        lyricSmallText(
          text: 'Derman nema hekîm nema',
        ),
        KurmanjiLyricText(text1: 'دەرمان نەما حەکیم نەما'),
        SoraniLyricText(text1: 'دەرمان نەما حەکیم نەما'),

//Section
        lyricSmallText(
          text: 'Ve eşe derxe ji dil X3',
        ),
        KurmanjiLyricText(text1: 'ڤ ئێشە دەرخە ژ دل'),
        SoraniLyricText(text1: 'ئەم ئێشە دەرخات لە دڵ'),

        lyricSmallText(
          text: 'Ve eşe derxe ji dil X3',
        ),
        KurmanjiLyricText(text1: 'ڤ ئێشە دەرخە ژ دل'),
        SoraniLyricText(text1: 'ئەم ئێشە دەرخات لە دڵ'),

        lyricSmallText(
          text: 'Ve eşe derxe ji dil X3',
        ),
        KurmanjiLyricText(text1: 'ڤ ئێشە دەرخە ژ دل'),
        SoraniLyricText(text1: 'ئەم ئێشە دەرخات لە دڵ'),

        oneLine(),
//Section
        lyricSmallText(
          text: 'Ezim dildar ez im xembar',
        ),
        KurmanjiLyricText(text1: 'ئەزم دڵدار ئەزم خەمبار'),
        SoraniLyricText(text1: 'منم دڵدار منم خەمبار'),

//Section
        lyricSmallText(
          text: 'Yar yar yar',
        ),
        KurmanjiLyricText(text1: 'یار یار یار'),

//Section
        lyricSmallText(
          text: 'Dikim gazî w dikim hawar',
        ),
        KurmanjiLyricText(
          text1: 'دکم گازی ',
          text2: 'و دکم هاوار',
          color1: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'بانگ دەکەم ',
          color1: songNewWordColor,
          text2: 'و هاوار دەکەم',
        ),

//Section
        lyricSmallText(
          text: 'Yar yar yar',
        ),
        KurmanjiLyricText(text1: 'یار یار یار'),

//Section
        lyricSmallText(
          text: 'Gelî bira û gelî heval',
        ),
        KurmanjiLyricText(text1: 'گەلی برا و گەلی هەڤاڵ'),
        SoraniLyricText(text1: 'گەلی برا و گەلی هەڤاڵ'),

//Section
        lyricSmallText(
          text: 'Meyze kin ez ketim çi hal',
        ),
        KurmanjiLyricText(
          text1: 'مەیزە کن ',
          color1: songNewWordColor,
          text2: 'ئەز کەتم چ حاڵ',
        ),
        SoraniLyricText(
          text1: 'تەماشاکەن ',
          text2: 'من کەوتمە چ حاڵێک',
          color1: songNewWordColor,
        ),

        lyricSmallText(
          text: 'Meyze kin ez ketim çi hal X3',
        ),
        KurmanjiLyricText(text1: 'مەیزە کن ئەز کەتم چ  حاڵ'),
        SoraniLyricText(text1: 'تەماشاکەن من کەوتمە چ حاڵێک '),

        lyricSmallText(
          text: 'Meyze kin ez ketim çi hal X3',
        ),
        KurmanjiLyricText(text1: 'مەیزە کن ئەز کەتم چ  حاڵ'),
        SoraniLyricText(text1: 'تەماشاکەن من کەوتمە چ حاڵێک '),

        oneLine(),
//Section
        lyricSmallText(
          text: 'Gelî bira û gelî heval',
        ),
        KurmanjiLyricText(text1: 'گەلی برا و گەلی هەڤاڵ'),
        SoraniLyricText(text1: 'گەلی برا و گەلی هەڤاڵ'),

//Section
        lyricSmallText(
          text: 'Meyze kin ez ketim çi hal X3',
        ),
        KurmanjiLyricText(text1: 'مەیزە کن ئەز کەتم چ  حاڵ'),
        SoraniLyricText(text1: 'تەماشاکەن من کەوتمە چ حاڵێک '),

        lyricSmallText(
          text: 'Meyze kin ez ketim çi hal X3',
        ),
        KurmanjiLyricText(text1: 'مەیزە کن ئەز کەتم چ  حاڵ'),
        SoraniLyricText(text1: 'تەماشاکەن من کەوتمە چ حاڵێک '),

        lyricSmallText(
          text: 'Meyze kin ez ketim çi hal X3',
        ),
        KurmanjiLyricText(text1: 'مەیزە کن ئەز کەتم چ  حاڵ'),
        SoraniLyricText(text1: 'تەماشاکەن من کەوتمە چ حاڵێک '),
        oneLine(),

//Section
        lyricSmallText(
          text: 'Buhar renge te civan e',
        ),
        KurmanjiLyricText(text1: 'بوهار رەنگێ تە جڤانە '),
        SoraniLyricText(text1: 'بەهار رەنگی تۆ جوانە '),

//Section
        lyricSmallText(
          text: 'Yar yar yar',
        ),
        KurmanjiLyricText(text1: 'یار یار یار'),

//Section
        lyricSmallText(
          text: 'Gul xemilîn nav baxan e',
        ),
        KurmanjiLyricText(
          text1: 'گول',
          text2: ' خەمڵین ',
          color2: songNewWordColor,
          text3: 'ناڤ باخانە',
        ),
        SoraniLyricText(
          text1: 'گوڵی',
          text2: ' گەشی ',
          color2: songNewWordColor,
          text3: 'ناو باخانە',
        ),

//Section
        lyricSmallText(
          text: 'Yar yar yar',
        ),
        KurmanjiLyricText(text1: 'یار یار یار'),

//Section
        lyricSmallText(
          text: 'Dosta min Bû yara min Bû',
        ),
        KurmanjiLyricText(text1: 'دۆستا من بوو یارا من بوو'),
        SoraniLyricText(text1: 'دۆستی من بوو یاری من بوو'),

//Section
        lyricSmallText(
          text: 'Kes nedî mîna te yar',
        ),
        KurmanjiLyricText(text1: 'کەس نەدی ', text2: 'مینا ', text3: 'تە یار', color2: songNewWordColor),
        SoraniLyricText(text1: 'کەسم نەدی ', text2: 'وەک ', text3: 'تۆ یار', color2: songNewWordColor),

        lyricSmallText(
          text: 'Kes nedî mîna te yar',
        ),
        KurmanjiLyricText(text1: 'کەس نەدی مینا تە یار'),
        SoraniLyricText(text1: 'کەسم نەدی وەک تۆ یار'),

        lyricSmallText(
          text: 'Kes nedî mîna te yar',
        ),
        KurmanjiLyricText(text1: 'کەس نەدی مینا تە یار'),
        SoraniLyricText(text1: 'کەسم نەدی وەک تۆ یار'),

//Section
        lyricSmallText(
          text: 'Dosta min Bû yara min Bû',
        ),
        KurmanjiLyricText(text1: 'دۆستا من بوو یارا من بوو'),
        SoraniLyricText(text1: 'دۆستی من بوو یاری من بوو'),

//Section
        lyricSmallText(
          text: 'Kes nedî mîna te yar',
        ),
        KurmanjiLyricText(text1: 'کەس نەدی مینا تە یار'),
        SoraniLyricText(text1: 'کەسم نەدی وەک تۆ یار'),
        lyricSmallText(
          text: 'Kes nedî mîna te yar',
        ),
        KurmanjiLyricText(text1: 'کەس نەدی مینا تە یار'),
        SoraniLyricText(text1: 'کەسم نەدی وەک تۆ یار'),
        lyricSmallText(
          text: 'Kes nedî mîna te yar',
        ),
        KurmanjiLyricText(text1: 'کەس نەدی مینا تە یار'),
        SoraniLyricText(text1: 'کەسم نەدی وەک تۆ یار'),
        const SizedBox(
          height: 40,
        ),
      ],
    );

//Complete
kurdistanL() => Column(
      children: [
        lyricBigText(
          text: 'وەلاتێ مە کوردستانە',
        ),
        singerName('شەهریبانا کوردی'),
        const SizedBox(
          height: 50,
        ),

        //break
        lyricSmallText(
          text: 'Welatê me gulistane',
        ),
        KurmanjiLyricText(
          text1: 'وەلاتێ',
          text2: ' مە ',
          color2: songNewWordColor,
          text3: 'گولستانە',
        ),
        SoraniLyricText(
          text1: 'وڵاتی',
          text2: ' ئێمە ',
          color2: songNewWordColor,
          text3: 'گوڵستانە',
        ),

        //break
        lyricSmallText(
          text: 'Cîh û meskenê me Kurdan e',
        ),
        KurmanjiLyricText(
          text1: 'جێ و مەسکەنێ مە کوردانە',
        ),
        SoraniLyricText(
          text1: 'جێ و مەسکەنی ئێمە کوردانە',
        ),

        //break
        lyricSmallText(
          text: 'Welat ji mere ruh û can e',
        ),
        KurmanjiLyricText(
          text1: 'وەلات',
          text2: ' ژ مەرە ',
          color2: songNewWordColor,
          text3: 'رح و جانە',
        ),
        SoraniLyricText(
          text1: 'وڵات',
          text2: ' بۆ ئێمە ',
          color2: songNewWordColor,
          text3: 'ڕۆح و گیانە',
        ),

        //break
        lyricSmallText(
          text: 'Kurd hemu bira ne',
        ),
        KurmanjiLyricText(
          text1: 'کورد هەموو برانە',
        ),
        SoraniLyricText(
          text1: 'کورد هەموو بران',
        ),
        oneLine(),

        lyricSmallText(
          text: 'Welatê me gulistane',
        ),
        KurmanjiLyricText(
          text1: 'وەلاتێ',
          text2: ' مە ',
          color2: songNewWordColor,
          text3: 'گولستانە',
        ),
        SoraniLyricText(
          text1: 'وڵاتی',
          text2: ' ئێمە ',
          color2: songNewWordColor,
          text3: 'گوڵستانە',
        ),

        //break
        lyricSmallText(
          text: 'Cîh û meskenê me Kurdan e',
        ),
        KurmanjiLyricText(
          text1: 'جێ و مەسکەنێ مە کوردانە',
        ),
        SoraniLyricText(
          text1: 'جێ و مەسکەنی ئێمە کوردانە',
        ),

        //break
        lyricSmallText(
          text: 'Welat ji mere ruh û can e',
        ),
        KurmanjiLyricText(
          text1: 'وەلات',
          text2: ' ژ مەرە ',
          color2: songNewWordColor,
          text3: 'رح و جانە',
        ),
        SoraniLyricText(
          text1: 'وڵات',
          text2: ' بۆ ئێمە ',
          color2: songNewWordColor,
          text3: 'ڕۆح و گیانە',
        ),

        //break
        lyricSmallText(
          text: 'Kurd hemu bira ne',
        ),
        KurmanjiLyricText(
          text1: 'کورد هەموو برانە',
        ),
        SoraniLyricText(
          text1: 'کورد هەموو بران',
        ),
        oneLine(),

        //break
        lyricSmallText(
          text: 'Cîh û meskenê me Kurdan e',
        ),
        KurmanjiLyricText(
          text1: 'جێ و مەسکەنێ مە کوردانە',
        ),
        SoraniLyricText(
          text1: 'جێ و مەسکەنی ئێمە کوردانە',
        ),
        lyricSmallText(text: 'Temam baxe û bistane'),
        KurmanjiLyricText(
          text1: 'تەمام باخە و بستانە',
        ),
        SoraniLyricText(
          text1: 'تەواوی باخ و بێستانە',
        ),
        lyricSmallText(text: 'Welat guli gulistan e'),
        KurmanjiLyricText(
          text1: 'وەلات گولی گولستانە',
        ),
        SoraniLyricText(text1: 'وڵات گوڵی گوڵستانە'),
        lyricSmallText(text: 'Kurd hemu bira ne'),
        KurmanjiLyricText(
          text1: 'کورد هەموو برانە',
        ),
        SoraniLyricText(text1: 'کورد هەموو بران'),
        oneLine(),

        //break
        lyricSmallText(
          text: 'Cîh û meskenê me Kurdan e',
        ),
        KurmanjiLyricText(
          text1: 'جێ و مەسکەنێ مە کوردانە',
        ),
        SoraniLyricText(
          text1: 'جێ و مەسکەنی ئێمە کوردانە',
        ),
        lyricSmallText(text: 'Temam baxe û bistane'),
        KurmanjiLyricText(
          text1: 'تەمام باخە و بستانە',
        ),
        SoraniLyricText(
          text1: 'تەواوی باخ و بێستانە',
        ),
        lyricSmallText(text: 'Welat guli gulistan e'),
        KurmanjiLyricText(
          text1: 'وەلات گولی گولستانە',
        ),
        SoraniLyricText(text1: 'وڵات گوڵی گوڵستانە'),
        lyricSmallText(text: 'Kurd hemu bira ne'),
        KurmanjiLyricText(
          text1: 'کورد هەموو برانە',
        ),
        SoraniLyricText(text1: 'کورد هەموو بران'),
        oneLine(),
        //break
        lyricSmallText(
          text: 'Welatê me pir şêrîn e',
        ),
        KurmanjiLyricText(
          text1: 'وەلاتێ مە',
          text2: ' پر ',
          color2: songNewWordColor,
          text3: 'شیرینە',
        ),
        SoraniLyricText(
          text1: 'وڵاتی  ئێمە',
          text2: '  زۆر ',
          color2: songNewWordColor,
          text3: 'شیرینە (جوانە)',
        ),

        //break
        lyricSmallText(
          text: 'Merg û çimen û zevî ne',
        ),
        KurmanjiLyricText(text1: 'مێرگ و چیمەن و زەڤی نە'),
        SoraniLyricText(text1: 'مێرگ و چیمەن و زەوی و زارە'),

        //break
        lyricSmallText(
          text: 'Qîz û bûkn wê tev cindî ne',
        ),
        KurmanjiLyricText(
          text1: 'قز و بوکن وێ',
          text2: ' تەڤ ',
          text3: 'جندی نە',
          color2: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'کچ و بوکی',
          text2: ' هەموو ',
          text3: 'جوندین (سەربازن)',
          color2: songNewWordColor,
        ),

        //break
        lyricSmallText(
          text: 'Eslê xwe da Ari ne',
        ),
        KurmanjiLyricText(text1: 'ئەسڵێ خوێ دە ئارینە'),
        SoraniLyricText(text1: 'لە ئەسڵا  خۆیان (خەڵکی) ئارین'),

        //break
        oneLine(),

        lyricSmallText(text: 'Gulistana me zeynet e'),
        KurmanjiLyricText(text1: 'گولیستانا مە زەینەتە'),
        SoraniLyricText(text1: 'گوڵستانی ئێمە زەینەتە'),
        lyricSmallText(text: 'Civata wî pir hurmet e'),
        KurmanjiLyricText(
          text1: 'جڤاتی وی',
          text2: ' پر حورمەتە',
          color1: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'کۆمەڵگاکەی',
          text2: ' زۆر بە حورمەتە',
          color1: songNewWordColor,
        ),

        //break
        lyricSmallText(text: 'Temam qedr e û qîymet e'),
        KurmanjiLyricText(text1: 'تەمام قەدر و قیمەتە'),
        SoraniLyricText(text1: 'تەواوی بە قەدر و قیمەتە'),

        //break
        lyricSmallText(text: 'Welatê me cennet e'),
        KurmanjiLyricText(text1: 'ولاتی مە جەننەتە'),
        SoraniLyricText(text1: 'وڵاتی ئێمە جەننەتە'),

        oneLine(),

        lyricSmallText(text: 'Gulistana me zeynet e'),
        KurmanjiLyricText(text1: 'گولیستانا مە زەینەتە'),
        SoraniLyricText(text1: 'گوڵستانی ئێمە زەینەتە'),
        lyricSmallText(text: 'Civata wî pir hurmet e'),
        KurmanjiLyricText(
          text1: 'جڤاتی وی',
          text2: ' پر حورمەتە',
          color1: songNewWordColor,
        ),
        SoraniLyricText(
          text1: 'کۆمەڵگاکەی',
          text2: ' زۆر بە حورمەتە',
          color1: songNewWordColor,
        ),

        //break
        lyricSmallText(text: 'Temam qedr e û qîymet e'),
        KurmanjiLyricText(text1: 'تەمام قەدر و قیمەتە'),
        SoraniLyricText(text1: 'تەواوی بە قەدر و قیمەتە'),

        //break
        lyricSmallText(text: 'Welatê me cennet e'),
        KurmanjiLyricText(text1: 'ولاتی مە جەننەتە'),
        SoraniLyricText(text1: 'وڵاتی ئێمە جەننەتە'),

        const SizedBox(
          height: 40,
        ),
      ],
    );

// final shingalL = Column(
//   children: [
//     SizedBox(
//       height: 40,
//     ),
//     lyricBigText(
//       text: 'شنگالە',
//     ),
//     singerName('بڵند ئیبراهیم'),
//     SizedBox(
//       height: 50,
//     ),
//     lyricSmallText(text: 'Serê çyayê te'),
//     KurmanjiLyricText(
//       text1: 'سەرێ چیایێ تە ',
//     ),
//     SoraniLyricText(
//       text1: 'لەسەر شاخی تۆ ',
//     ),
//     lyricSmallText(text: ' dengda navê te'),
//     KurmanjiLyricText(
//       text1: 'دەنگدا ناڤێ تە',
//     ),
//     lyricSmallText(text: 'Miletên tene'),
//     KurmanjiLyricText(
//       text1: 'میللەتێن ',
//       color2: songNewWordColor,
//       text2: 'تەنە',
//     ),
//     SoraniLyricText(
//       text1: 'میللەتێکی ',
//       color2: songNewWordColor,
//       text2: 'تەنها',
//     ),
//     lyricSmallText(text: 'diken berxudan'),
//     KurmanjiLyricText(
//       text1: 'دکەن ',
//       text2: 'بەرخوەدان ',
//       color2: songNewWordColor,
//     ),
//     SoraniLyricText(
//       text1: 'دەکەن ',
//       text2: 'بەرخۆدان ',
//       color2: songNewWordColor,
//     ),
//     oneLine(),
//     lyricSmallText(text: 'Şingale şingale'),
//     KurmanjiLyricText(
//       text1: 'شنگالە شنگالە ',
//     ),
//     lyricSmallText(text: ' Warê me kûrdane'),
//     KurmanjiLyricText(
//       text1: 'وارێ ',
//       color1: songNewWordColor,
//       text2: 'مە کوردانە',
//     ),
//     oneLine(),
//     lyricSmallText(text: 'Şingale şingale'),
//     KurmanjiLyricText(
//       text1: 'شنگالە شنگالە ',
//     ),
//     lyricSmallText(text: ' Warê me kûrdane'),
//     KurmanjiLyricText(
//       text1: 'وارێ ',
//       color1: songNewWordColor,
//       text2: 'مە کوردانە',
//     ),
//     SoraniLyricText(
//       text1: 'جێگەی ',
//       color1: songNewWordColor,
//       text2: 'ئێمە کوردانە',
//     ),
//     lyricSmallText(text: 'Şingale şingale'),
//     KurmanjiLyricText(
//       text1: 'شنگالە شنگالە ',
//     ),
//     lyricSmallText(text: ' Evrû berxudane'),
//     KurmanjiLyricText(
//       text1: 'ئەڤڕو بەرخوەدانە ',
//       color2: songNewWordColor,
//     ),
//     oneLine(),
//     lyricSmallText(text: 'Çyayî bi nav û deng'),
//     KurmanjiLyricText(
//       text1: 'چیایی ',
//       text2: 'بناڤ و دەنگ',
//       color2: songNewWordColor,
//     ),
//     SoraniLyricText(
//       text1: 'چیای ',
//       text2: 'بەناوبانگ',
//       color2: songNewWordColor,
//     ),
//     lyricSmallText(text: ' li ser te buye ceng'),
//     KurmanjiLyricText(text1: 'ل سەر تە بوویە جەنگ '),
//     SoraniLyricText(text1: 'لەسەر تۆ بوو بە جەنگ '),
//     lyricSmallText(text: 'Em dê te parêzîn'),
//     KurmanjiLyricText(
//       text1: 'ئەم دێ تە پارێزین',
//     ),
//     SoraniLyricText(
//       text1: 'ئێمە دەتپارێزین',
//     ),
//     lyricSmallText(text: ' Can bute qurbane'),
//     KurmanjiLyricText(
//       text1: 'جان بو تە قوربانە',
//     ),
//     SoraniLyricText(
//       text1: 'گیان بۆ تۆ قوربانییە',
//     ),
//     oneLine(),
//     lyricSmallText(text: 'Chê şerfidîn'),
//     KurmanjiLyricText(
//       text1: 'جهێ شەرفەدین ',
//     ),
//     lyricSmallText(text: 'tef ûlo ayÎn'),
//     KurmanjiLyricText(
//       text1: 'تەف ئولو ئایین',
//     ),
//     lyricSmallText(text: ' Li pişta tene'),
//     KurmanjiLyricText(
//       text1: 'ل پشتا تەنە ',
//     ),
//     lyricSmallText(text: 'bakûr û bajûr'),
//     KurmanjiLyricText(
//       text1: 'باکورو باشوور ',
//     ),
//     lyricSmallText(text: 'Sund bi laleşê'),
//     KurmanjiLyricText(
//       text1: 'سوند ب لالەشێ ',
//     ),
//     lyricSmallText(text: 'bi agrê şureşê'),
//     KurmanjiLyricText(
//       text1: 'ب ئاگرێ شوڕەشێ',
//     ),
//     lyricSmallText(text: 'Dûjminî bi sujîn'),
//     KurmanjiLyricText(
//       text1: 'دوژمن ب سوژین ',
//     ),
//     lyricSmallText(text: 'jite bikeyne dûr'),
//     KurmanjiLyricText(
//       text1: 'ژ تە بکەینە دوور ',
//     ),
//     lyricSmallText(text: 'Qîzên te hatin'),
//     KurmanjiLyricText(
//       text1: 'قیزێن تە هاتن ',
//     ),
//     lyricSmallText(text: ' li jêr li jûr'),
//     KurmanjiLyricText(
//       text1: 'ل ژێر و ل ژوور ',
//     ),
//     oneLine(),
//     lyricSmallText(text: 'Çyayê xuragir'),
//     KurmanjiLyricText(
//       text1: 'چیایێ خوڕاگر ',
//     ),
//     lyricSmallText(text: 'li ser te bû agir'),
//     KurmanjiLyricText(
//       text1: 'ل سەر تە بوو ئاگر ',
//     ),
//     lyricSmallText(text: 'Chê şureşa '),
//     KurmanjiLyricText(
//       text1: 'جهێ شوڕەشا ',
//     ),
//     lyricSmallText(text: 'yê mîrû merda'),
//     KurmanjiLyricText(
//       text1: 'یێ میرو مەردا ',
//     ),
//     lyricSmallText(text: 'Dicle û Furat û Zême'),
//     KurmanjiLyricText(
//       text1: 'دیجلە و فوڕات و زێمە ',
//     ),
//     SizedBox(
//       height: 40,
//     ),
//   ],
// );

//to add: Zakaria new song,
