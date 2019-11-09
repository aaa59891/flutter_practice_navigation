import 'package:flutter/material.dart';
import 'package:my_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _isGlutenFree = false;
  bool _isVegan = true;
  bool _isVegetarian = true;
  bool _isLactoseFree = true;
  void Function(bool) _toggle(bool toggleValue) {
    return (value) {
      this.setState(() {
        toggleValue = value;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: theme.textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                SwitchListTile(
                  title: Text('Gluten-free'),
                  value: this._isGlutenFree,
                  subtitle: Text('only include gluten-free meals.'),
                  onChanged: (value) {
                    this.setState(() {
                      this._isGlutenFree = value;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Vegan'),
                  value: this._isVegan,
                  subtitle: Text('only include vegan meals.'),
                  onChanged: (value) {
                    this.setState(() {
                      this._isVegan = value;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Vegetarian'),
                  value: this._isVegetarian,
                  subtitle: Text('only include Vegetarian meals.'),
                  onChanged: (value) {
                    this.setState(() {
                      this._isVegetarian = value;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Lactose-free'),
                  value: this._isLactoseFree,
                  subtitle: Text('only include Lactose-free meals.'),
                  onChanged: (value) {
                    this.setState(() {
                      this._isLactoseFree = value;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
