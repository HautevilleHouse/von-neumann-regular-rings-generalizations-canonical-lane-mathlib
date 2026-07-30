import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure BooleanRing (R : Type u) [Ring R] where
  idempotentAll : ∀ x : R, x * x = x

def booleanRingClosed (R : Type u) [Ring R] (B : BooleanRing R) : Prop :=
  B.idempotentAll

structure BooleanRegularRing (R : Type u) [Ring R] where
  isBoolean : BooleanRing R
  isRegular : RegularRing R
  booleanRegularClosed : Prop

theorem boolean_ring_is_regular (R : Type u) [Ring R] (B : BooleanRing R) : RegularRing R :=
  { allElementsRegular := λ x => 
    { x := x
      exists_y := x
      regularityCondition := by
        calc
          x = x * x := by symm; exact B.idempotentAll x
          _ = x * x * x := by rw [B.idempotentAll x]
          _ = x * (x * x) := by ring
          _ = x * x := by rw [B.idempotentAll x]
    }
  }

end HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse
