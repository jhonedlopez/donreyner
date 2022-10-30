const Http = new XMLHttpRequest();
const url='http://localhost:3005/MostrarProveedores';
Http.open("GET", url);
Http.send();

Http.onreadystatechange = (e) => {
  console.log(Http.responseText)
}