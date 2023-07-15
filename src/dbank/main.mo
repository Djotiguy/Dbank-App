// import du module Debug
import Debug "mo:base/Debug";
import Int "mo:base/Int";

// Création de notre canister "DBank"
actor DBank {
  // Assignation d'une valeur avec "var"
  var currentValue: Nat = 300;

  // Réassignation de la valeur "currentValue"
  // currentValue := 100;

  // Assignation d'une constante avec "let"
  let id = 9484829919829399;
  // id := 2303030303030303; Let fonctionne comme "const" en js

  // Affichage notre valeur grâce à la fonction 'print(debug_show())'
  // Debug.print(debug_show(id))

  // Création d'une fonction d'implémentation
  public func topUp(amount: Nat) {
    currentValue += amount;
      Debug.print(debug_show(currentValue))

  };
  // Appel de notre fonction
  // topUp();
  
  // Création d'une fonction de déplémentation
public func withDraw(amount: Nat){
  let tempValue: Int = currentValue - amount;
  if(tempValue >= 0 ){
    currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
        Debug.print("Impossible de soustraire le montant en dessous de zéro.");
    }
      
  };

  public query func checkBalance(): async Nat{
    return currentValue;
  };
}