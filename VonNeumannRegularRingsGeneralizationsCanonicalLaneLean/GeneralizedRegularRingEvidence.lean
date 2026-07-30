import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.RegularRingClosure

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure GeneralizedRegularRingPackage (A : AdmissibleClass) where
  ringObject : RegularRingObject
  generalizationProp : Prop
  generalizationPropTerm : generalizationProp

def GeneralizedRegularRingClosed {A : AdmissibleClass} (G : GeneralizedRegularRingPackage A) : Prop :=
  RegularRingWitnessClosed G.ringObject ∧ G.generalizationProp

theorem generalized_regular_ring_closed {A : AdmissibleClass} (G : GeneralizedRegularRingPackage A)
    (h : RegularRingWitnessClosed G.ringObject) (h' : G.generalizationProp) : GeneralizedRegularRingClosed G := by
  exact And.intro h h'

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse