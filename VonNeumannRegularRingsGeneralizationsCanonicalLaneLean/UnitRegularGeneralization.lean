import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure UnitRegularRing (R : Type u) [Monoid R] where
  isRegular : RegularRing R
  unitRegularCondition : ∀ x : R, ∃ (u : R) (h : IsUnit u), x = x * u * x

def unitRegularClosed (R : Type u) [Monoid R] (U : UnitRegularRing R) : Prop :=
  U.unitRegularCondition

theorem unit_regular_implies_regular (R : Type u) [Monoid R] (U : UnitRegularRing R) : RegularRing R := U.isRegular

end HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse
