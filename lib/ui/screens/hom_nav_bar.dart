import 'package:flutter/material.dart';
import 'package:untitled2/ui/screens/counterscreen.dart';
import 'home_screen.dart';
class HomeNavBar extends StatefulWidget
{
  const HomeNavBar({super.key});

  @override
  State<HomeNavBar> createState()=>_HomeNavBarState();

}
class _HomeNavBarState extends State<HomeNavBar>{
  get lable => null;
  int current_index=0;
  final List<Widget>_screens =const
  [
    HomeScreen()
,CounterScreen()
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
        ),

        body:_screens[current_index],
      // ,child:SafeArea(
      //       child: GridView.builder(
      //         padding: const EdgeInsets.all(10),
      //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 2,
      //           crossAxisSpacing: 10,
      //           mainAxisSpacing: 10,
      //         ),
      //        itemBuilder: (context, index) {
      //           return Container(
      //               clipBehavior: Clip.hardEdge,
      //               decoration: BoxDecoration(
      //                 color: Colors.blue,
      //                 borderRadius: BorderRadius.circular(15),
      //               ),
      //               child: const Image(
      //                   image: AssetImage('assets/OIP (1).jpg'), fit: BoxFit.fill
      //               ) //   style: TextStyle(color: Colors.white),
      //           );
      //         },
      //       )
      //   ),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex:current_index,
      onTap:(int index){
        setState(() {current_index=index;})
        ;} ,
      items: const [BottomNavigationBarItem(icon: Icon(Icons.home)
        ,label:'home'
      ),
        BottomNavigationBarItem(icon: Icon(Icons.person)
            ,label:'counter'
        ),
    ],
    ),


    );
  }
}