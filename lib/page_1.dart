import 'package:flutter/material.dart';

class Provedor extends StatelessWidget {
  final id_Provedor = TextEditingController();
  final nombre_Provedor = TextEditingController();
  final id_Ingrediente = TextEditingController();
  final nombre_Ingrediente = TextEditingController();
  final pais = TextEditingController();
  final ciudad = TextEditingController();
  final direccion = TextEditingController();
  final telefono = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: id_Provedor,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Id_Provedor",
                prefixIcon: Icon(Icons.person, color: Color(0xff000000)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.phone,
              controller: nombre_Provedor,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, color: Color(0xff000000)),
                hintText: "Nombre_Provedor",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: id_Ingrediente,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Id_ingrediente",
                prefixIcon: Icon(Icons.local_pizza, color: Color(0xff000000)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.phone,
              controller: nombre_Ingrediente,
              decoration: InputDecoration(
                hintText: "Nombre_Ingrediente",
                prefixIcon: Icon(Icons.text_decrease, color: Color(0xff000000)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: pais,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Pais",
                prefixIcon: Icon(Icons.location_city, color: Color(0xff000000)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.phone,
              controller: ciudad,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_city, color: Color(0xff000000)),
                hintText: "Ciudad",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: direccion,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Direccion",
                prefixIcon: Icon(Icons.location_city, color: Color(0xff000000)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              keyboardType: TextInputType.phone,
              controller: telefono,
              decoration: InputDecoration(
                hintText: "Telefono",
                prefixIcon: Icon(Icons.phone, color: Color(0xff000000)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                String uNombre = nombre_Provedor.text.toString();
                String uID = id_Provedor.text.toString();
                String uDesc = id_Ingrediente.text.toString();
                String uGenero = nombre_Ingrediente.text.toString();
                String uFecha = pais.text.toString();
                String uPrecio = ciudad.text.toString();
                String uClas = direccion.text.toString();
                String uDes = telefono.text.toString();
                print(
                    "ID: $uID, Nombre: $uNombre, Descripcion: $uDesc, Genero: $uGenero, Fecha: $uFecha, Precio: $uPrecio, Clasificacion: $uClas, Desarrolladores: $uDes");
              },
              child: Text("Agregar"),
            )
          ],
        ),
      ),
    );
  }
}
