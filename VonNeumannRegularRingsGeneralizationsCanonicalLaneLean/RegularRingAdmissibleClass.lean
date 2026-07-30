import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure AdmissibleClass where
  object : Type
  regularProperty : Prop
  additionalProperty : Prop
  gateWitness : regularProperty ∨ additionalProperty

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.regularProperty ∧ (A.regularProperty ∨ A.additionalProperty)

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse