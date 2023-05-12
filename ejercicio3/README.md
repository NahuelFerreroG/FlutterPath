# Ejercicio 3

1. Implementa la navegación entre dos pantallas utilizando el widget Navigator. Crea una pantalla de inicio y una pantalla de detalles.

Para implementar la navegación entre dos pantallas, puedes utilizar el widget Navigator. Primero, crea dos clases de widgets diferentes para representar cada pantalla. Luego, en la pantalla de inicio, puedes utilizar el método Navigator.push para navegar a la pantalla de detalles cuando se realiza una acción, como presionar un botón.


2. Agrega un formulario de entrada de texto a la pantalla de inicio y muestra el texto ingresado en la pantalla de detalles cuando se envíe el formulario.

Para agregar un formulario de entrada de texto y mostrarlo en la pantalla de detalles, puedes utilizar el widget TextField para capturar la entrada del usuario en la pantalla de inicio. Luego, al enviar el formulario, puedes pasar el texto ingresado a la pantalla de detalles a través de la ruta de navegación utilizando el constructor DetailsScreen.

Para esto utilizamos un StatefulWidget en lugar de un StatelessWidget en la pantalla de inicio. Esto se debe a que necesitamos mantener un estado interno en la pantalla de inicio para capturar y almacenar el texto ingresado por el usuario.

Cuando utilizas un StatefulWidget, debes definir una clase separada que extienda StatefulWidget y otra clase que extienda State dentro de ella. La clase State es responsable de almacenar y gestionar el estado de ese widget en particular.

En el ejemplo, creamos la clase HomeScreen como un StatefulWidget y la clase _HomeScreenState como su estado correspondiente. La clase _HomeScreenState incluye un TextEditingController que se utiliza para capturar y almacenar el texto ingresado por el usuario.

Cada vez que el usuario escribe en el TextField, el estado se actualiza y el valor del texto se almacena en el TextEditingController. Luego, cuando se presiona el botón de enviar, el texto se pasa a la pantalla de detalles a través de la ruta de navegación.

Aquí tienes un resumen de las partes clave relacionadas con el uso de un StatefulWidget:

HomeScreen extiende StatefulWidget y es responsable de crear la instancia del estado (_HomeScreenState).
_HomeScreenState extiende State<HomeScreen> y es donde se almacena y gestiona el estado interno del widget.
TextEditingController se utiliza para capturar y almacenar el texto ingresado por el usuario.
El estado se actualiza y se pasa a la pantalla de detalles cuando se presiona el botón de enviar.