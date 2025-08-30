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





