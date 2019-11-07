## Learning

1. widgets
    - GridView
2. ClipRRect
    - Creates a rounded-rectangular clip.
3. onGenerateRoute 
    - can check the settings to return related route
4. onUnknownRoute
    - 404 route
5. tabs
    - DefaultTabController
        - combine with scaffold and TabBarView, set the length, tabs and the widgets to show
    - BottomNavigationBar
        - BottomNavigationBarItem
6. drawer
    - add Drawer in scaffold
7. Navigator.push
    - the result from this promise is not when we get the new page successfully, it's when the new page calls pop and return to current page
8. initState cannot get the context because it's running before the context, if we need the context to init something, can use `didChangeDependencies`, but this function will be triggered everytime when the status is changed

