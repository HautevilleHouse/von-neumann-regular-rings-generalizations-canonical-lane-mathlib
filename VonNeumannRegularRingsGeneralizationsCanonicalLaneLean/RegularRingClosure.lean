import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure RegularRingObject where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  ringAxioms : Prop
  vonNeumannRegular : Prop
  ringAxiomsTerm : ringAxioms
  vonNeumannRegularTerm : vonNeumannRegular

def RegularRingWitnessClosed (O : RegularRingObject) : Prop :=
  O.vonNeumannRegular

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse