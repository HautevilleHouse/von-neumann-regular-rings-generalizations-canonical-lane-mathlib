import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.RegularRingGeneralizations
import HautevilleHouse.VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.RegularRingBridgeLemmas
import HautevilleHouse.VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.RegularRingGateLemmas

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

def ConstrainedRegularRingClosure (R : VonNeumannRegularRing) : Prop :=
  bridgeClosedRegular R ∧ gateClosedRegular R

theorem constrained_regular_ring_endgame (R : VonNeumannRegularRing) :
    ConstrainedRegularRingClosure R := by
  exact And.intro (bridge_from_regular_ring R) (gate_from_regular_ring R)

def ConstrainedBaerClosure (R : BaerRing) : Prop :=
  bridgeClosedBaer R ∧ gateClosedBaer R

theorem constrained_baer_endgame (R : BaerRing) :
    ConstrainedBaerClosure R := by
  exact And.intro (bridge_from_baer_ring R) (gate_from_baer_ring R)

def ConstrainedRickartClosure (R : RickartRing) : Prop :=
  bridgeClosedRickart R ∧ gateClosedRickart R

theorem constrained_rickart_endgame (R : RickartRing) :
    ConstrainedRickartClosure R := by
  exact And.intro (bridge_from_rickart_ring R) (gate_from_rickart_ring R)

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse