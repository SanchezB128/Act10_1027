import 'package:flutter/material.dart';

class Ingredientes extends StatelessWidget {
  final id_Ingrediente = TextEditingController();
  final nombre_Ingrediente = TextEditingController();
  final descripcion = TextEditingController();
  final precio_Unidad = TextEditingController();
  final stok_Disponible = TextEditingController();
  final fecha_Caducidad = TextEditingController();
  final cantiad_ingrediente = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: id_Ingrediente,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Id_Ingrediente",
                prefixIcon: Icon(Icons.food_bank, color: Color(0xff000000)),
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
                prefixIcon: Icon(Icons.text_decrease, color: Color(0xff000000)),
                hintText: "Nombre_Ingrediente",
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
              controller: descripcion,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Descripcion",
                prefixIcon: Icon(Icons.text_decrease, color: Color(0xff000000)),
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
              controller: precio_Unidad,
              decoration: InputDecoration(
                hintText: "Precio_Unidad",
                prefixIcon:
                    Icon(Icons.sledding_outlined, color: Color(0xff000000)),
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
              controller: stok_Disponible,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Stok_Disponible",
                prefixIcon: Icon(Icons.numbers, color: Color(0xff000000)),
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
              controller: fecha_Caducidad,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.date_range, color: Color(0xff000000)),
                hintText: "Fecha_Caducidad",
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
              controller: cantiad_ingrediente,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Cantidada_Ingrediente",
                prefixIcon: Icon(Icons.numbers, color: Color(0xff000000)),
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
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                String uID = id_Ingrediente.text.toString();
                String uNombre = nombre_Ingrediente.text.toString();
                String uCorreo = descripcion.text.toString();
                String uPais = precio_Unidad.text.toString();
                String uEdad = stok_Disponible.text.toString();
                String uCuenta = fecha_Caducidad.text.toString();
                String uContrasena = cantiad_ingrediente.text.toString();

                print(
                    "ID: $uID, Nombre: $uNombre, Correo: $uCorreo, Pais: $uPais, Edad: $uEdad, Cuenta: $uCuenta, Contraseña: $uContrasena, ");
              },
              child: Text("Agregar"),
            )
          ],
        ),
      ),
    );
  }
}
