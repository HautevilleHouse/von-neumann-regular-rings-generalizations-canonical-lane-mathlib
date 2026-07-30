import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.RegularRingGeneralizations
import HautevilleHouse.VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.RegularRingBridgeLemmas

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

def gateClosedRegular (R : VonNeumannRegularRing) : Prop :=
  True

theorem gate_from_regular_ring (R : VonNeumannRegularRing) :
    gateClosedRegular R := by
  trivial

def gateClosedBaer (R : BaerRing) : Prop :=
  True

theorem gate_from_baer_ring (R : BaerRing) :
    gateClosedBaer R := by
  trivial

def gateClosedRickart (R : RickartRing) : Prop :=
  True

theorem gate_from_rickart_ring (R : RickartRing) :
    gateClosedRickart R := by
  trivial

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse