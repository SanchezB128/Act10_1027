import 'package:flutter/material.dart';

class Pizza extends StatelessWidget {
  final id_Pizza = TextEditingController();
  final nombre_Pizza = TextEditingController();
  final descripcion = TextEditingController();
  final id_Ingrediente = TextEditingController();
  final precio = TextEditingController();
  final tamano = TextEditingController();
  final tiempo_Cocion = TextEditingController();
  final calorias_Porcion = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: id_Pizza,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Id_Pizza",
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
              controller: nombre_Pizza,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Nombre_Pizza",
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
              controller: descripcion,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Descripcion",
                prefixIcon: Icon(Icons.description, color: Color(0xff000000)),
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
              controller: id_Ingrediente,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: "id_Ingrediente",
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
              controller: precio,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "precio",
                prefixIcon: Icon(Icons.money, color: Color(0xff000000)),
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
              controller: tamano,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Tamaño",
                prefixIcon: Icon(Icons.title, color: Color(0xff000000)),
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
              controller: tiempo_Cocion,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                hintText: "Tiempo_Cocion",
                prefixIcon: Icon(Icons.time_to_leave, color: Color(0xff000000)),
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
              controller: calorias_Porcion,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Calorias_Porcion",
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
            ElevatedButton(
              onPressed: () {
                String uID = id_Pizza.text.toString();
                String uIDUsuario = nombre_Pizza.text.toString();
                String uIDJuego = descripcion.text.toString();
                String uFechaComentario = id_Ingrediente.text.toString();
                String uPuntuacion = precio.text.toString();
                String uTituloComentario = tamano.text.toString();
                String uComentario = tiempo_Cocion.text.toString();
                String uContadorLikes = calorias_Porcion.text.toString();
                print(
                    "ID: $uID, ID Usuario: $uIDUsuario, ID Juego: $uIDJuego, Fecha Comentario: $uFechaComentario, Puntuación: $uPuntuacion, Título Comentario: $uTituloComentario, Comentario: $uComentario, Contador Likes: $uContadorLikes");
              },
              child: Text("Agregar"),
            )
          ],
        ),
      ),
    );
  }
}
