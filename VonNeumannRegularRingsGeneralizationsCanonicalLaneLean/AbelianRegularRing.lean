import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure AbelianRegularRing (R : Type u) [Ring R] where
  isRegular : RegularRing R
  idempotentCentral : ∀ e : R, e * e = e → ∀ r : R, e * r = r * e
  idempotentCentralProp : Prop
  idempotentCentralWitness : idempotentCentral

def abelianRegularClosed (R : Type u) [Ring R] (A : AbelianRegularRing R) : Prop :=
  A.idempotentCentral

-- An abelian regular ring is strongly regular
def abelianToStronglyRegular (R : Type u) [Ring R] (A : AbelianRegularRing R) : StronglyRegularRing R :=
  { isRegular := A.isRegular
    idempotentCentral := A.idempotentCentral
  }

end HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse
