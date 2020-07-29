import UIKit
/*: SwiftCodingChallenges

# Challenge 1: ¿Las letras son únicas?
 
 ## Dificultad: Fácil

 Escriba una función que acepte un **String** como su único parámetro y devuelva **True** si la cadena tiene solo letras únicas, teniendo en cuenta las mayúsculas y minúsculas.

 ### Ejemplos de entrada y salida
 * El **String** "No duplicates”"  debe regresar **True**.
 * El **String** "abcdefghijklmnopqrstuvwxyz”"  debe regresar **True**.
 * El **String** "AaBbCc”"  debe regresar **True** porque el challenge es sensible a mayúsculas y minúsculas.
 * El **String** "Hello, world”"  debe regresar **false** debido a que contiene dos Ls y dos Os.

 * Tip n. ° 1: Puedes tratar el **String** de entrada como una **Array** que contiene elementos de **Character**s.
 * Tip n. ° 2: Intenta usar una  **Array** temporal para almacenar **Character**s que se han verificado, pero no es necesario.
 * Tip n. ° 3: Los **Set**s  son como  **Array**s, excepto que no pueden contener elementos duplicados.
 * Tip n. ° 4: Puedes crear **Set**s a partir de **Array**s y **Array**s  a partir de **Set**s . Ambos tienen una propiedad de conteo.
 */

func isUniqueLetters(input: String) -> Bool {
  return Set(input).count == input.count
}


assert(isUniqueLetters(input: "No duplicates") == true, "Challenge 1 failed")
assert(isUniqueLetters(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(isUniqueLetters(input: "AaBbCc") == true, "Challenge 1 failed")
assert(isUniqueLetters(input: "Hello, world") == false, "Challenge 1 failed")
