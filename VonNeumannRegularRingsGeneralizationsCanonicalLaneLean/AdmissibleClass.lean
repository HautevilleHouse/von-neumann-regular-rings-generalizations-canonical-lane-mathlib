import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure AdmissibleClass where
  object : VonNeumannAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VonNeumannWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse