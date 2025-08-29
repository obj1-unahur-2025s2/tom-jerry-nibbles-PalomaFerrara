import quesos.*
object tom {
 var energia = 50

 method energia() = energia

 method energiaConsumida(distancia) = distancia/2
 
 method correr(distancia) {
    energia -= distancia / 2
 }

 method comerRaton(unRaton){
    energia += 12 + unRaton.peso()
 }

 method velocidadMaxima() = 5 + energia/10

 method puedeCazarRatonADistancia(distancia){
    return (energia >= self.energiaConsumida(distancia))
 }

 method cazarRatonADistanciaSiPuede(unRaton, unaDistancia){
     if (self.puedeCazarRatonADistancia(unaDistancia)){
     self.correr(unaDistancia) 
     self.comerRaton(unRaton)}
}
}
object jerry {
  var edad = 2

  method peso() = 20 * edad

  method edad() {return edad}

  method cumplirAños(años){
    edad = años 
  }
}

object nibbles {
   const peso = 35
   method peso() {return peso}
}

object puflito{
    var peso = 80
 method comerQueso(unQueso){
    peso += unQueso.peso() / 2
}
method peso() {return peso}

}

// CASO DE PRUEBA 1
// tom.comerRaton(jerry)
// tom.correr(24)
// tom.comerRaton(nibbles)
// jerry.cumplirAños(3)
// tom.comerRaton(jerry)
// tom.correr(38)


//CASO DE PRUEBA 2
// tom.comerRaton(puflito) (energia 142, velocidad max 19.2)
// tom.correr(5) (energia 139.5, velocidad max 18.95)
// jerry.cumplirAños(6) (edad 6, peso 120)
// tom.correr(38) (energia 120.5, velocidad max 17.05)
// tom.comerRaton(jerry) (energia 252.5, velocidad max 30.25)
// tom.cazarRatonADistanciaSiPuede(nibbles,50) (energia 274.5, velocidad max 32.45)


//CASO DE PRUEBA 3
// tom.cazarRatonADistanciaSiPuede(nibbles, 300)  (no hace nada, la energia de tom no es suficiente)
// tom.comerRaton(nibbles) (energia 97, velocidad max 14.7)
// tom.correr(30) (energia 82, velocidad max 13.2)


