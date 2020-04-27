import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

    String _nombre = '';
    String _email = '';
    String _fecha = '';

    List<String> _poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];

    String _opcionSeleccionada = 'Volar';

    TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto normales'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearClave(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  _crearInput() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Tu vieja en tanga',
        labelText: 'nombre',
        helperText: 'El name',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon( Icons.account_circle ), 
      ),

      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );

  }

  Widget _crearEmail() {

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'tuhermana@entanga.com',
        labelText: 'e-mail',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon( Icons.email ), 
      ),

      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );

  }

  Widget _crearClave() {

    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'tu clave',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon( Icons.lock ), 
      ),

      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );

  }

  Widget _crearFecha( BuildContext context ) {

    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Fecha de Nac',
        labelText: 'Fecha de Nac',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon( Icons.calendar_today ), 
      ),
      onTap: () {

        FocusScope.of(context).requestFocus(new FocusScopeNode());
        _selectDate(context);

      },
    );

  }

  void _selectDate(BuildContext context) async {

    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2020),
      lastDate: new DateTime(2022),
      locale: Locale('es', 'ES')
    );

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }

  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {

    List<DropdownMenuItem<String>> lista = new List();

    _poderes.forEach((poder){

      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));

    });

    return lista;

  }

  Widget _crearDropdown() {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton(
            value: _opcionSeleccionada,
            items: getOpcionesDropdown(),
            onChanged: (opt) {
              setState(() {
                _opcionSeleccionada = opt;
              });
            },
          )
        )
      ],
    );

  }




  
  _crearPersona() {

    return ListTile(
      title: Text('El nombre de tu vieja es $_nombre'),
      subtitle: Text('El correo de tu hermana es $_email'),
      trailing: Text('La clave no se dice'),
    );

  }




}
