import 'package:flutter/material.dart';

class Cliente extends StatelessWidget {
  final id_Cliente = TextEditingController();
  final nombre = TextEditingController();
  final apellido = TextEditingController();
  final direccion = TextEditingController();
  final telefono = TextEditingController();
  final correo = TextEditingController();
  final fecha_Nacimiento = TextEditingController();
  final fecha_registro = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: id_Cliente,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Dd_ClienteID",
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
              controller: nombre,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Nombre",
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
              controller: apellido,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Apellido",
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
              controller: direccion,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: "direccion",
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
              controller: telefono,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Telefono",
                prefixIcon: Icon(Icons.phone, color: Color(0xff000000)),
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
              controller: correo,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Correo",
                prefixIcon: Icon(Icons.email, color: Color(0xff141414)),
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
              controller: fecha_Nacimiento,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "fecha_Nacimiento",
                prefixIcon: Icon(Icons.date_range, color: Color(0xff000000)),
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
              controller: fecha_registro,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "fecha_registro",
                prefixIcon: Icon(Icons.date_range, color: Color(0xff000000)),
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
                String uID = id_Cliente.text.toString();
                String uIDJuego = nombre.text.toString();
                String uIDUsuario = apellido.text.toString();
                String uFechaCompra = direccion.text.toString();
                String uMetodoPago = telefono.text.toString();
                String uCantidadVendida = correo.text.toString();
                String uIngresosGenerados = fecha_Nacimiento.text.toString();
                String uEstadoEntrega = fecha_registro.text.toString();
                print(
                    "ID: $uID, ID Juego: $uIDJuego, ID Usuario: $uIDUsuario, Fecha Compra: $uFechaCompra, Método de Pago: $uMetodoPago, Cantidad Vendida: $uCantidadVendida, Ingresos Generados: $uIngresosGenerados, Estado Entrega: $uEstadoEntrega");
              },
              child: Text("Agregar"),
            )
          ],
        ),
      ),
    );
  }
}
