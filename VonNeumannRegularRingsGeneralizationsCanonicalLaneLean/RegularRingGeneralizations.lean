import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure VonNeumannRegularRing where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  ringAxioms : Prop
  regularProperty : Prop

structure BaerRing where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  ringAxioms : Prop
  annihilatorProjection : Prop
  idempotentLift : Prop

structure RickartRing where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  ringAxioms : Prop
  rightAnnihilatorProjection : Prop
  leftAnnihilatorProjection : Prop

def RegularRingGeneralizationAdmissibleClass (R : VonNeumannRegularRing) : Prop :=
  R.regularProperty

def BaerAdmissibleClass (R : BaerRing) : Prop :=
  R.annihilatorProjection ∧ R.idempotentLift

def RickartAdmissibleClass (R : RickartRing) : Prop :=
  R.rightAnnihilatorProjection ∧ R.leftAnnihilatorProjection

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse