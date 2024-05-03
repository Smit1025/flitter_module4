import 'package:flutter/material.dart';

class contril extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatefulWidget {
  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List<String> _names = [];
  TextEditingController _editingController = TextEditingController();
  String? _selectedName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Demo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _names.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _showDialog(_names[index]);
                  },
                  onLongPress: () {
                    _showContextMenu(_names[index]);
                  },
                  child: ListTile(
                    title: Text(_names[index]),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _editingController,
              decoration: InputDecoration(
                labelText: 'Enter Name',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    _addName(_editingController.text);
                    _editingController.clear();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _addName(String name) {
    setState(() {
      _names.add(name);
    });
  }

  void _showDialog(String name) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Selected Name'),
          content: Text(name),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _showContextMenu(String name) {
    _selectedName = name;
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);

    showMenu(
      context: context,
      position:
          RelativeRect.fromLTRB(offset.dx, offset.dy, offset.dx, offset.dy),
      items: [
        PopupMenuItem(
          child: ListTile(
            title: Text('Edit Item'),
            onTap: () {
              _editingController.text = name;
              _editItem();
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            title: Text('Delete Item'),
            onTap: () {
              _confirmDelete();
            },
          ),
        ),
      ],
    );
  }

  void _editItem() {
    setState(() {
      _names.remove(_selectedName);
      _selectedName = null;
    });
  }

  void _confirmDelete() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Delete'),
          content: Text('Are you sure you want to delete this item?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                _deleteItem();
                Navigator.of(context).pop();
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  void _deleteItem() {
    setState(() {
      _names.remove(_selectedName);
      _selectedName = null;
    });
  }
}
