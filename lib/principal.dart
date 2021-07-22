import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_finder/data.dart';
import 'package:pet_finder/pet_widget.dart';
import 'package:pet_finder/category_list.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  List<Pet> pets = getPetList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:Icon(
          Icons.notifications_none,
          color: Colors.grey[800],
        ),

      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16,),
              child: Text(
                "خوش آمدید",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "هرکجا که هستید حیوان خانگی مورد علاقه خود را پیدا کنید",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 14,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'جستجو',
                  hintStyle: TextStyle(fontSize: 16,fontFamily: 'Roboto'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],

                  contentPadding: EdgeInsets.only(left: 8,right: 16),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 24, left: 24),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Text(
                    "دسته بندی ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),



                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildPetCategory(Category.HAMSTER, "56", Colors.orange[200]),
                      buildPetCategory(Category.CAT, "210", Colors.blue[200]),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildPetCategory(Category.BUNNY, "90", Colors.green[200]),
                      buildPetCategory(Category.DOG, "340", Colors.red[200]),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [



                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey[800],
                  ),
                  Text(
                    "حیوانات خانگی جدید",textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 280,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                reverse: true,
                children: buildNewestPet(),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(right: 16, left: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey[800],
                  ),
                  Text(
                    "مراکز دامپزشکی نزدیک شما",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              margin: EdgeInsets.only(bottom: 16),
              child: PageView(
                reverse: true,
                physics: BouncingScrollPhysics(),
                children: [
                  buildVet("assets/images/vets/vet_0.png", "بیمارستان اورژانس حیوانات", "(021) 133-8956"),
                  buildVet("assets/images/vets/vet_1.png", "مرکز دامپزشکی آرتمیس", "(042) 722-9159"),
                  buildVet("assets/images/vets/vet_2.png", "مرکز دامپزشکی پدیده", "(026) 4986-9532"),
                  buildVet("assets/images/vets/vet_3.png", "مرکز دامپزشکی نگار", "(024) 8974-559-555"),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget buildPetCategory(Category category, String total, Color color){
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CategoryList(category: category)),
          );
        },
        child: Container(
          height: 80,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[200],
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    category == Category.HAMSTER ? "همستر" : category == Category.CAT ? "گربه" : category == Category.BUNNY ? "خرگوش" : "سگ",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    "تعداد : " + total,textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                    ),
                  ),

                ],
              ),


              SizedBox(
                width: 12,
              ),
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color.withOpacity(0.5),
                ),
                child: Center(
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      "assets/images/" + (category == Category.HAMSTER ? "hamster" : category == Category.CAT ? "cat" : category == Category.BUNNY ? "bunny" : "dog") + ".png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildNewestPet(){
    List<Widget> list = [];
    for (var i = 0; i < pets.length; i++) {
      if(pets[i].newest){
        list.add(
            PetWidget(
                pet: pets[i],
                index: i
            )
        );
      }
    }
    return list;
  }

  Widget buildVet(String imageUrl, String name, String phone){
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 4),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        border: Border.all(
          width: 1,
          color: Colors.grey[300],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                name,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 8,
              ),

              Row(
                children: [

                  Icon(
                    Icons.phone,
                    color: Colors.grey[800],
                    size: 18,
                  ),

                  SizedBox(
                    width: 8,
                  ),

                  Text(
                    phone,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),



              Container(
                margin: EdgeInsets.only(top: 16.0),
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  "فعالیت :  24/7",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),

            ],
          ),

          SizedBox(
            width: 32,
          ),
          Container(
            height: 98,
            width: 98,
            margin: EdgeInsets.only(right: 24.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }

}