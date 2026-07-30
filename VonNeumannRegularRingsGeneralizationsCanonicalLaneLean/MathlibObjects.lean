import VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Algebra.Ring.Regular

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VonNeumannRegularRing where
  carrier : Type
  ring : Ring carrier
  regular : ∀ a : carrier, ∃ x : carrier, a * x * a = a

structure VonNeumannAdmittedObject where
  ring : VonNeumannRegularRing
  generalizationHolds : Prop
  conclusion : generalizationHolds

structure VonNeumannEndgameState where
  object : VonNeumannAdmittedObject

def VonNeumannWitnessClosed (O : VonNeumannAdmittedObject) : Prop :=
  O.generalizationHolds

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse