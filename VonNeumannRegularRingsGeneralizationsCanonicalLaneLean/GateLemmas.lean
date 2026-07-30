import VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse