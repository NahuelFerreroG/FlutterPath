# Ejercicio 4

1. Crea una aplicación Flutter con una imagen en el centro de la pantalla. La imagen puede ser de tu elección y puede estar almacenada localmente en la aplicación.

En este ejercicio, puedes utilizar el widget StatelessWidget ya que no hay necesidad de mantener un estado interno. Puedes utilizar el widget Image.asset para cargar una imagen almacenada localmente en la aplicación.

2. Agrega un botón a la aplicación anterior que cambie la imagen que se muestra en la pantalla cada vez que se presione el botón. Puedes tener una lista de imágenes predefinidas y alternar entre ellas al presionar el botón.

En este caso, necesitarás utilizar un StatefulWidget para mantener el estado de la aplicación y actualizar la imagen en respuesta a los eventos del botón. Puedes utilizar el widget FlatButton o ElevatedButton para el botón y cambiar la imagen utilizando el método setState.



