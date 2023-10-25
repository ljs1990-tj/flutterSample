import 'package:flutter/material.dart';
import 'package:country_calling_code_picker/picker.dart';

class CountryEx1 extends StatefulWidget {
  @override
  State<CountryEx1> createState() => _CountryEx1State();
}

class _CountryEx1State extends State<CountryEx1> {
  Country? _country;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _init();
  }
  void _init() async{
    final country = await getDefaultCountry(context);
    setState(() {
      _country = country;
    });
  }

  void _show() async{
    final country = await showCountryPickerSheet(
      context,
      heightFactor: 0.6,
      cancelWidget: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    );
    if (country != null) {
      setState(() {
        _country = country;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title : Text("국가선택")),
        body : Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => _show(),
                child: Text("국가선택")
              )
            ],
          ),
        )
      );

  }
}

