class PopularBookModel {
  String title, author, price, image, description;
  int color;

  PopularBookModel(this.title, this.author, this.price, this.image, this.color,
      this.description);
}

List<PopularBookModel> populars = popularBookData
    .map((item) => PopularBookModel(
        item['title'].toString(),
        item['author'].toString(),
        item['price'].toString(),
        item['image'].toString(),
        item['color'] as int,
        item['description'].toString()))
    .toList();

var popularBookData = [
   {
    "title": "Nutuk",
    "author": "Mustafa Kemal Atatürk",
    "price": "80",
    "image": "assets/images/img_newbook1.png",
    "color": 0xFFFFD3B6,
    "description":
        "Temel ilke, Türk milletinin haysiyetli ve şerefli bir millet olarak yaşamasıdır. Bu ilke, ancak tam istiklâle sahip olmakla gerçekleştirilebilir. Ne kadar zengin ve bolluk içinde olursa olsun, bağımsızlıktan yoksun bir millet, medenî insanlık dünyası karşısında uşak olmak konumundan yüksek bir davranışa lâyık görülemez.Yabancı bir devletin koruyup kollayacağını kabul etmek, insanlık vasıflarından yoksunluğu, güçsüzlük ve miskinliği itiraftan başka bir şey değildir. Gerçekten de, bu seviyesizliğe düşmemiş olanların, isteyerek başlarına bir yabancı efendi getirmelerine asla ihtimal verilemez.Halbuki, Türk’ün haysiyeti, gururu ve kabiliyeti çok yüksek ve büyüktür. Böyle bir millet esir yaşamaktansa yok olsun daha iyidir!Kurtuluş Savaşı'nın öyküsü."
  },
  {
    "title": "Surname",
    "author": "İskender Pala",
    "price": "110",
    "image": "assets/images/img_newbook2.png",
    "color": 0xFFFFD3B6,
    "description":
        "Osmanlı sultanı, şehzadeleri için bir sünnet düğünü tertiplemiştir. İstanbul’da eski saraylarla birlikte Atmeydanı, Okmeydanı ve Divanyolu gibi mekânlar seyirlik alan olarak belirlenir. On beş gün sürecek düğünün dillere destan olması istenmektedir. Her vilayetten ve her ülkeden insanlar davet edilir. Bu sırada üzücü bir hadise: Sadrazam şehit olur… Sultan düğün neşesini siyasete boğdurmamak adına yeni sadrazam ataması yapmaz. Mühr-i Hümayûnunu kime vereceğini düğünden sonra açıklayacağını söyler. Bu durumda on beş günlük düğün süreci devletlular ve davetliler için acımasız ve ölümcül bir iktidar mücadelesine dönüşüverir."
  },
  {
    "title": "Yükseliş",
    "author": "Stefen King",
    "price": "69",
    "image": "assets/images/img_popular_book1.png",
    "color": 0xFFFFD3B6,
    "description":
        "“Yükseliş, uzlaşmaz görünen tüm farklılıklara rağmen ortak zeminler bulmanın ve tüm zorluklara karşın yaşam karşısında duyulan müşterek neşenin ustaca işlendiği eşsiz bir roman. Her satırında Stephen King’in güçlü ve sürükleyici hikâye anlatıcılığının kendine özgü örneklerine şahit olacaksınız."
  },
  {
    "title": "Uzun Zaman Önce",
    "author": "Zekeriya Çetin",
    "price": "55",
    "image": "assets/images/img_popular_book2.png",
    "color": 0xFF2B325C,
    "description":
        "Geçmişin, bir urgan gibi dolanmışsa boynuna, kaderinden ne kadar kaçabilirsin? Selim çok çabalasa da kaçamıyor kaderinden. Yeşil hortumun kanlı izleri bedenini aşıp ruhuna işlemiş bir kere. Yine de bir umut, çıkıyor yola, her şeyi unutup sil baştan başlamak istiyor hayata. İçinde uyuyan canavarı fark etmeden usulca yaşıyor. Ta ki onu görene kadar… Yaralarından tanıyorlar birbirlerini; iyileştiririz sanıyorlar, fakat bunun ölümcül bir tedavi olduğunu fark etmiyorlar.Selim çocukluk travmalarını Gizem’in yaralarını sararak atlatacağını sanırken çıkması imkânsız bir girdabın içine çekiliyor."
  },
  {
    "title": "Dördüncü Kanat",
    "author": "Rebecca Yarros ",
    "price": "175",
    "image": "assets/images/img_popular_book3.png",
    "color": 0xFFF7EA4A,
    "description":
        "New York Times çoksatan yazarı Rebecca Yarros’un kaleminden ejderha binicilerine özel savaş akademisinin seçkin ve acımasız dünyasına hoş geldiniz!  Kitaplar ve tarih arasında sakin bir hayat süren yirmi yaşındaki Violet Sorrengail’in Kâtipler Bölüğü’ne girmesi beklenmektedir. Ancak general –aynı zamanda pençe kadar sert olarak bilinen annesi– onun Navarre’ın seçkinlerinden biri, yani bir ejderha binicisiejderha binicisi olması için yüzlerce adayın arasına katılmasını emreder.Fakat herkesten ufak ve narin olduğunuzda ölmek an meselesidir... çünkü ejderhalar “kırılgan” insanlarla bağ kurmazlar. Onları küle çevirirler.Arkadaşlar, düşmanlar, sevgililer… Basgiath Savaş Akademisi’ndeki herArkadaşlar, herkesin sakladığı bir şeyler vardır çünkü bu akademiye bir kez girdiniz mi kesin sadece iki şekilde çıkabilirsiniz: mezun olarak ya da ölerek."
  }
];
