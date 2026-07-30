import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.RegularRingClosure
import HautevilleHouse.VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.GeneralizedRegularRingEvidence

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

def ConstrainedRegularRingClosure (A : AdmissibleClass) : Prop :=
  RegularRingWitnessClosed A.object ∧ GeneralizedRegularRingClosed (A.generalizedPackage : GeneralizedRegularRingPackage A)

theorem constrained_regular_ring_endgame (A : AdmissibleClass) : ConstrainedRegularRingClosure A := by
  unfold ConstrainedRegularRingClosure
  exact And.intro
    (by
      -- bridge closure from admissible class
      exact A.bridgeWitness)
    (by
      -- gate closure from admissible class
      exact A.gateWitness)

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse