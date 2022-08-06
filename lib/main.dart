import 'package:flutter/material.dart';

import 'allmusic.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: allmusic(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
        child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (value) {
              print(value);
            },
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.orange,
            tabs: [
              Tab(text: "one",icon: Icon(Icons.add),),
              Tab(text: "two",icon: Icon(Icons.add),),
              Tab(text: "three",icon: Icon(Icons.add),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            one(),
            two(),
            three()
          ],
        ),
    ));
  }
}



class mytabbar extends StatefulWidget {
  const mytabbar({Key? key}) : super(key: key);

  @override
  State<mytabbar> createState() => _mytabbarState();
}

class _mytabbarState extends State<mytabbar> with TickerProviderStateMixin{

  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 3, vsync: this);
    tabController!.addListener(() {
      print(tabController!.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("avasar"),leading: IconButton(onPressed: () {
        
      }, icon: Icon(Icons.add)),
        bottom: TabBar(
          controller: tabController,
          onTap: (value) {
            print(value);
          },
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.orange,
          tabs: [
            Tab(text: "one",icon: Icon(Icons.add),),
            Tab(text: "two",icon: Icon(Icons.add),),
            Tab(text: "three",icon: Icon(Icons.add),),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          one(),
          two(),
          three()
        ],
      ),
    );
  }
}


class one extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:20,itemBuilder: (context, index) {
      return ListTile(title: Text("One $index"),);
    },);
  }
}

class two extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:20,itemBuilder: (context, index) {
      return ListTile(title: Text("two $index"),);
    },);
  }
}

class three extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:20,itemBuilder: (context, index) {
      return ListTile(title: Text("three $index"),);
    },);
  }
}
