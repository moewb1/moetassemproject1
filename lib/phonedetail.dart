import 'package:flutter/material.dart';
import 'phone.dart';

class PhoneDetailsPage extends StatefulWidget {
  final Phone phone;

  PhoneDetailsPage({required this.phone});

  @override
  _PhoneDetailsPageState createState() => _PhoneDetailsPageState();
}

class _PhoneDetailsPageState extends State<PhoneDetailsPage> {
  String selectedColor = '';
  String selectedStorage = '';

  @override
  void initState() {
    super.initState();
    if (widget.phone.colorOptions.isNotEmpty) {
      selectedColor = widget.phone.colorOptions.first;
    }
    if (widget.phone.storageOptions.isNotEmpty) {
      selectedStorage = widget.phone.storageOptions.keys.first;
    }
  }

  double totalPrice() {
    double phonePrice = widget.phone.price;

    if (selectedStorage.isNotEmpty) {
      double storagePrice = widget.phone.storageOptions[selectedStorage] ?? 0.0;
      phonePrice = storagePrice;
    }

    return phonePrice;
  }

  void handleCheckout() {
    String title = widget.phone.name;
    double price = totalPrice();
    String storage = selectedStorage;
    String color = selectedColor;

    double additionalPrice = 0.0;

    bool addCover = false;
    bool addWarranty = false;
    bool buySim = false;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text('Confirm Order'),
              content: StatefulBuilder(
                builder: (context, setState) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Title: $title'),
                      Text('Price: \$${price.toStringAsFixed(2)}'),
                      Text('Storage: $storage'),
                      Text('Color: $color'),
                      SizedBox(height: 20),
                      Text('Additional Options:'),
                      CheckboxListTile(
                        title: Text('Add Cover and Protection for \$30'),
                        value: addCover,
                        onChanged: (newValue) {
                          setState(() {
                            addCover = newValue!;
                            if (newValue) {
                              additionalPrice += 30.0;
                            } else {
                              additionalPrice -= 30.0;
                            }
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('1 Year Warranty for \$50'),
                        value: addWarranty,
                        onChanged: (newValue) {
                          setState(() {
                            addWarranty = newValue!;
                            if (newValue) {
                              additionalPrice += 50.0;
                            } else {
                              additionalPrice -= 50.0;
                            }
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text('Buy a New SIM for \$10'),
                        value: buySim,
                        onChanged: (newValue) {
                          setState(() {
                            buySim = newValue!;
                            if (newValue) {
                              additionalPrice += 10.0;
                            } else {
                              additionalPrice -= 10.0;
                            }
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Total Price: \$${(price + additionalPrice).toStringAsFixed(2)}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                },
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Row(
                          children: [
                            Icon(Icons.check_circle, color: Colors.green),
                            SizedBox(width: 10),
                            Text('Order confirmed!'),
                          ],
                        ),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  child: Text('Confirm'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel'),
                ),
              ],
            );
          },
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Details'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FullScreenImage(imageUrl: widget.phone.imageUrl),
                  ),
                );
              },
              child: Image.network(
                widget.phone.imageUrl,
                height: 200.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              widget.phone.name,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Price: \$${totalPrice().toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Description: ${widget.phone.description}',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Choose Storage:',
              style: TextStyle(fontSize: 18.0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.phone.storageOptions.keys.map((storageOption) {
                return RadioListTile(
                  title: Text(storageOption),
                  value: storageOption,
                  groupValue: selectedStorage,
                  onChanged: (value) {
                    setState(() {
                      selectedStorage = value.toString();
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            Text(
              'Choose Color:',
              style: TextStyle(fontSize: 18.0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.phone.colorOptions.map((colorOption) {
                return RadioListTile(
                  title: Text(colorOption),
                  value: colorOption,
                  groupValue: selectedColor,
                  onChanged: (value) {
                    setState(() {
                      selectedColor = value.toString();
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                handleCheckout();
              },
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}

class FullScreenImage extends StatelessWidget {
  final String imageUrl;

  FullScreenImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Image.network(imageUrl),
        ),
      ),
    );
  }
}
