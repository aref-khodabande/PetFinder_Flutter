enum Category { CAT, DOG, BUNNY, HAMSTER }
enum Condition { Adoption, Disappear, Mating }

class Pet {

  String name;
  String location;
  String distance;
  String condition;
  Category category;
  String imageUrl;
  bool favorite;
  bool newest;

  Pet(this.name, this.location, this.distance, this.condition, this.category, this.imageUrl, this.favorite, this.newest);

}

List<Pet> getPetList(){
  return <Pet>[
    Pet("گربه ی حبشه ای", "تهران", "2.5", "فرزندخواندگی", Category.CAT, "assets/images/cats/cat_1.jpg", true, true),
    Pet("فولد اسکاتلندی", "همدان", "1.2", "جفت گیری", Category.CAT, "assets/images/cats/cat_2.jpg", false, false),
    Pet("راگدول", "ایلام", "1.2", "ناپدید شده", Category.CAT, "assets/images/cats/cat_3.jpg", false, false),
    Pet("برمه ای", "تهران", "1.2", "ناپدید شده", Category.CAT, "assets/images/cats/cat_4.jpg", true, true),
    Pet(" موکوتاه آمریکایی", "اصفهان", "1.2", "جفت گیری", Category.CAT, "assets/images/cats/cat_5.jpg", true, false),
    Pet("موکوتاه انگلیسی", "تهران", "1.9", "فرزندخواندگی", Category.CAT, "assets/images/cats/cat_6.jpg", false, false),
    Pet("گربه ی حبشه ای", "تهران", "2.5", "فرزندخواندگی", Category.CAT, "assets/images/cats/cat_7.jpg", true, false),
    Pet("فولد اسکاتلندی", "همدان", "1.2", "جفت گیری", Category.CAT, "assets/images/cats/cat_8.jpg", false, false),
    Pet("راگدول", "یزد", "1.2", "ناپدید شده", Category.CAT, "assets/images/cats/cat_9.jpg", false, true),

    Pet("روبرووسکی", "تهران", "2.5", "فرزندخواندگی", Category.HAMSTER, "assets/images/hamsters/hamster_1.jpg", true, true),
    Pet("روسی", "اصفهان", "2.5", "جفت گیری", Category.HAMSTER, "assets/images/hamsters/hamster_2.jpg", false, false),
    Pet("طلایی", "یزد", "2.5", "ناپدید شده", Category.HAMSTER, "assets/images/hamsters/hamster_3.jpg", false, false),
    Pet("چینی", "تهران", "2.5", "ناپدید شده", Category.HAMSTER, "assets/images/hamsters/hamster_4.jpg", true, true),
    Pet("کمپل کوتوله", "تهران", "2.5", "فرزندخواندگی", Category.HAMSTER, "assets/images/hamsters/hamster_5.jpg", true, false),
    Pet("سوری", "تهران", "2.5", "فرزندخواندگی", Category.HAMSTER, "assets/images/hamsters/hamster_6.jpg", false, false),
    Pet("کوتوله زمستانی ", "میانه", "2.5", "جفت گیری", Category.HAMSTER, "assets/images/hamsters/hamster_7.jpg", true, false),

    Pet("خرگوش آمریکایی", "تهران", "2.5", "فرزندخواندگی", Category.BUNNY, "assets/images/bunnies/bunny_1.jpg", true, true),
    Pet("خرگوش بلژیکی", "تهران", "2.5", "جفت گیری", Category.BUNNY, "assets/images/bunnies/bunny_2.jpg", false, false),
    Pet("خرگوش اسپانیایی", "یزد", "2.5", "ناپدید شده", Category.BUNNY, "assets/images/bunnies/bunny_3.jpg", false, false),
    Pet("خرگوش کالیفرنیایی", "شیراز", "2.5", "ناپدید شده", Category.BUNNY, "assets/images/bunnies/bunny_4.jpg", true, true),
    Pet("خرگوش غول پیکر چک", "تهران", "2.5", "فرزندخواندگی", Category.BUNNY, "assets/images/bunnies/bunny_5.jpg", true, false),
    Pet("خرگوش آلمانی", "تهران", "2.5", "فرزندخواندگی", Category.BUNNY, "assets/images/bunnies/bunny_6.jpg", false, false),
    Pet("خرگوش انگلیسی", "میانه", "2.5", "جفت گیری", Category.BUNNY, "assets/images/bunnies/bunny_7.jpg", true, false),
    Pet("خرگوش انگلیسی", "تهران", "2.5", "فرزندخواندگی", Category.BUNNY, "assets/images/bunnies/bunny_8.jpg", true, true),

    Pet("آفنپیشر", "تهران", "2.5", "فرزندخواندگی", Category.DOG, "assets/images/dogs/dog_1.jpg", true, true),
    Pet("آکیتا چوپان", "یزد", "2.5", "جفت گیری", Category.DOG, "assets/images/dogs/dog_2.jpg", false, false),
    Pet("فاکس هاند آمریکایی", "اصفهان", "2.5", "ناپدید شده", Category.DOG, "assets/images/dogs/dog_3.jpg", false, false),
    Pet("چوپان", "قم", "2.5", "ناپدید شده", Category.DOG, "assets/images/dogs/dog_4.jpg", true, true),
    Pet("تریر استرالیایی", "قم", "2.5", "فرزندخواندگی", Category.DOG, "assets/images/dogs/dog_5.jpg", true, false),
    Pet("کلی ریش دار", "تهران", "2.5", "فرزندخواندگی", Category.DOG, "assets/images/dogs/dog_6.jpg", false, false),
    Pet("چوپان بلژیکی", "میانه", "2.5", "جفت گیری", Category.DOG, "assets/images/dogs/dog_7.jpg", true, false),
    Pet("شانه خونی", "تهران", "2.5", "فرزندخواندگی", Category.DOG, "assets/images/dogs/dog_8.jpg", true, true),
    Pet("تریر بوستون", "تهران", "2.5", "فرزندخواندگی", Category.DOG, "assets/images/dogs/dog_9.jpg", true, true),
    Pet("چینی", "قم", "2.5", "جفت گیری", Category.DOG, "assets/images/dogs/dog_10.jpg", false, false),
    Pet("کول حاشیه", "قم", "2.5", "ناپدید شده", Category.DOG, "assets/images/dogs/dog_11.jpg", false, false),
    Pet("چو چو", "تهران", "2.5", "ناپدید شده", Category.DOG, "assets/images/dogs/dog_12.jpg", true, true),
  ];
}