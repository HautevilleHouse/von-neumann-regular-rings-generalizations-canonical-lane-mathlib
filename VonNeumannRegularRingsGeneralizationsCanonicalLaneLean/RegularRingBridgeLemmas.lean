import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.RegularRingGeneralizations

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

def bridgeClosedRegular (R : VonNeumannRegularRing) : Prop :=
  RegularRingGeneralizationAdmissibleClass R

theorem bridge_from_regular_ring (R : VonNeumannRegularRing) :
    bridgeClosedRegular R := by
  exact R.regularProperty

def bridgeClosedBaer (R : BaerRing) : Prop :=
  BaerAdmissibleClass R

theorem bridge_from_baer_ring (R : BaerRing) :
    bridgeClosedBaer R := by
  exact And.intro R.annihilatorProjection R.idempotentLift

def bridgeClosedRickart (R : RickartRing) : Prop :=
  RickartAdmissibleClass R

theorem bridge_from_rickart_ring (R : RickartRing) :
    bridgeClosedRickart R := by
  exact And.intro R.rightAnnihilatorProjection R.leftAnnihilatorProjection

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse