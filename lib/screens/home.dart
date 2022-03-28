import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget signalProducts(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 160,
      height: 230,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Image.network('https://pngimg.com/uploads/spinach/spinach_PNG10.png')
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text('Fresh Basil',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    Text('50\$/50 Gram ',style: TextStyle(color: Colors.grey,),),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 5),
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text('50 Gram',style: TextStyle(fontSize: 9),),
                                ),
                                Center(child: Icon(Icons.arrow_drop_down,color: Colors.yellow,)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),

                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.remove,
                                  size: 15,
                                  color: Color(0xffd0b84c),),
                                Text('1',style: TextStyle(color: Color(0xffd0b84c),fontWeight: FontWeight.bold),),
                                Icon(
                                    Icons.add,
                                    size: 20,
                                    color: Color(0xffd0b84c)
                                )

                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                    /*Row(
                                  children: [
                                    Expanded(
                                      child: Container(

                                      height: 30,
                                      width: 120,
                                      child: MaterialButton(
                                        onPressed: (){},
                                        child: Row(
                                          children: [
                                            Expanded(child: Text('50 Gram',style: TextStyle(fontSize: 10),),),
                                            Icon(Icons.arrow_drop_down,color: Colors.yellow,)
                                          ],
                                        ),
                                      ),
                                    ),
                                    ),
                                    Expanded(
                                      child: Container(

                                      height: 30,
                                      width: 120,
                                      child: MaterialButton(
                                        onPressed: (){},
                                        child: Row(
                                          children: [
                                            Expanded(child: Text('50 Gram'),),
                                            Expanded(child: Icon(Icons.arrow_drop_down,color: Colors.yellow,))
                                          ],
                                        ),
                                      ),
                                    ),
                                    ),
                                  ],
                                ),*/
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget ListTitle({required IconData icon, title,}){
    return ListTile(
        leading: Icon(icon,size: 32,),
      title: Text(title,style: TextStyle(color: Colors.black45),),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffd6b738),
        title: const Text('Home',style: TextStyle(color: Colors.black,fontSize: 17),),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd6d381),
            child: Icon(Icons.search,size: 17,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
                backgroundColor: Color(0xffd6d381),
              child: Icon(Icons.shop,size: 17,color: Colors.black,),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xffd1ad17),
          child: ListView(
            children: [
              DrawerHeader(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white54,
                        radius: 43,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.red,
                        ),
                      ),SizedBox(height: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Welcome Guest'),
                          SizedBox(height: 7,),
                          Container(
                            height: 25,
                            child: OutlineButton(
                              onPressed: (){},
                              child: Text("Login"),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: BorderSide(
                                  width: 2
                                )
                              ),
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
              ),
              ListTitle(icon:Icons.home_outlined,title: "Home"),
              ListTitle(icon:Icons.shop_outlined,title: "Home"),
              ListTitle(icon:Icons.home_outlined,title: "Home"),
              ListTitle(icon:Icons.home_outlined,title: "Home"),
              ListTitle(icon:Icons.home_outlined,title: "Home"),
              ListTitle(icon:Icons.home_outlined,title: "Home"),
              ListTitle(icon:Icons.home_outlined,title: "Home"),
              ListTitle(icon:Icons.home_outlined,title: "Home"),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi0Xg-k622Sbztlrb-L1o1CAla3zCbVc2lUw&usqp=CAU'),
                    fit: BoxFit.cover
                  ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 130,bottom: 10),
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: const BoxDecoration(
                                    color: Color(0xffd1ad17),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50),
                                      bottomLeft: Radius.circular(50))
                                ),
                                child:  const Center(
                                  child: Text('Vegi',
                                    style: TextStyle(
                                      color: Colors.white,
                                        fontSize: 20,
                                        shadows: [
                                      BoxShadow(
                                          color: Colors.green,
                                        blurRadius: 5,
                                        offset: Offset(2,1)
                                      )
                                    ]
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text('30 % Off',style: TextStyle(fontSize: 40,color: Colors.green[100],fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('On all vegetables products',
                                style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                  ),
                  ),
                  Expanded(
                    child: Container(

                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Herbs Seasonings'),
                  Text('view all',style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: [
                  signalProducts(),
                  signalProducts(),
                  signalProducts(),
                  signalProducts(),
                  signalProducts(),
                  signalProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fresh Fruits'),
                  Text('view all',style: TextStyle(color: Colors.grey),)
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: [
                  signalProducts(),
                  signalProducts(),
                  signalProducts(),
                  signalProducts(),
                  signalProducts(),
                  signalProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
