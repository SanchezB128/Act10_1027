import 'package:flutter/material.dart';

class Pedido extends StatelessWidget {
  final id_Pedido = TextEditingController();
  final id_Cliente = TextEditingController();
  final id_Empleado = TextEditingController();
  final fecha_Hora = TextEditingController();
  final estado_Pedido = TextEditingController();
  final direccion = TextEditingController();
  final total_Del_Pedido = TextEditingController();
  final metodo_Pago = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: id_Pedido,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Id_Pedido",
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
              controller: id_Cliente,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "id_Cliente",
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
              controller: id_Empleado,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Id_Empleado",
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
              controller: fecha_Hora,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Fecha_Hora",
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
              controller: estado_Pedido,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Estado_del_Pedido",
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
              controller: direccion,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "direccion",
                prefixIcon: Icon(Icons.directions, color: Color(0xff000000)),
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
              controller: total_Del_Pedido,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Total_Del_Pedido",
                prefixIcon:
                    Icon(Icons.money_off_csred, color: Color(0xff000000)),
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
              controller: metodo_Pago,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                hintText: "Metodo_Pago",
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
            ElevatedButton(
              onPressed: () {
                String uID = id_Pedido.text.toString();
                String uNombre = id_Cliente.text.toString();
                String uPaisOrigen = id_Empleado.text.toString();
                String uAnioFundacion = fecha_Hora.text.toString();
                String uPaginaDesarrollador = estado_Pedido.text.toString();
                String uCorreo = direccion.text.toString();
                String uNumeroContacto = total_Del_Pedido.text.toString();
                String uDescripcion = metodo_Pago.text.toString();
                print(
                    "ID: $uID, Nombre: $uNombre, País Origen: $uPaisOrigen, Año Fundación: $uAnioFundacion, Página Desarrollador: $uPaginaDesarrollador, Correo: $uCorreo, Número de Contacto: $uNumeroContacto, Descripción: $uDescripcion");
              },
              child: Text("Agregar"),
            )
          ],
        ),
      ),
    );
  }
}
