import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure StronglyRegularRing (R : Type u) [Ring R] where
  isRegular : RegularRing R
  idempotentCentral : ∀ e : R, e * e = e → ∀ r : R, e * r = r * e

def stronglyRegularClosed (R : Type u) [Ring R] (S : StronglyRegularRing R) : Prop :=
  S.idempotentCentral

theorem strongly_regular_implies_regular (R : Type u) [Ring R] (S : StronglyRegularRing R) : RegularRing R := S.isRegular

end HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse
