import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure RegularElement (R : Type u) [Monoid R] where
  x : R
  exists_y : R
  regularityCondition : x = x * exists_y * x

def regularElementClosed (R : Type u) [Monoid R] (e : RegularElement R) : Prop :=
  e.regularityCondition

structure RegularRing (R : Type u) [Monoid R] where
  allElementsRegular : ∀ x : R, RegularElement R

theorem regular_ring_is_regular_element (R : Type u) [Monoid R] (RR : RegularRing R) (x : R) :
  RegularElement R := RR.allElementsRegular x

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse
