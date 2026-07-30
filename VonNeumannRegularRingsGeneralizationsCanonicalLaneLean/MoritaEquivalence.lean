import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure MoritaEquivalencePackage where
  ringR : Type u
  ringS : Type v
  additionR : ringR → ringR → ringR
  multiplicationR : ringR → ringR → ringR
  zeroR : ringR
  oneR : ringR
  additionS : ringS → ringS → ringS
  multiplicationS : ringS → ringS → ringS
  zeroS : ringS
  oneS : ringS
  additiveGroupR : AddCommGroup ringR
  multiplicativeMonoidR : Monoid ringR
  additiveGroupS : AddCommGroup ringS
  multiplicativeMonoidS : Monoid ringS
  isVonNeumannRegularR : Prop
  isVonNeumannRegularS : Prop
  equivalenceGiven : Prop
  isVonNeumannRegularRTerm : isVonNeumannRegularR
  isVonNeumannRegularSTerm : isVonNeumannRegularS
  equivalenceGivenTerm : equivalenceGiven

structure MoritaEquivalenceEvidence (M : MoritaEquivalencePackage) where
  isVonNeumannRegularRClosed : M.isVonNeumannRegularR
  isVonNeumannRegularSClosed : M.isVonNeumannRegularS
  equivalenceGivenClosed : M.equivalenceGiven

def MoritaEquivalenceClosed (M : MoritaEquivalencePackage) : Prop :=
  M.isVonNeumannRegularR ∧ M.isVonNeumannRegularS ∧ M.equivalenceGiven

theorem morita_equivalence_closed_from_evidence
    (M : MoritaEquivalencePackage) (E : MoritaEquivalenceEvidence M) :
    MoritaEquivalenceClosed M := by
  exact And.intro E.isVonNeumannRegularRClosed
    (And.intro E.isVonNeumannRegularSClosed E.equivalenceGivenClosed)

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse