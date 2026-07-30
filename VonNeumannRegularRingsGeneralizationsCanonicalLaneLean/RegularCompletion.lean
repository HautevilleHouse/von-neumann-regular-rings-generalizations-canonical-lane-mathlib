import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure RegularCompletionPackage where
  ring : Type u
  addition : ring → ring → ring
  multiplication : ring → ring → ring
  zero : ring
  one : ring
  additiveGroup : AddCommGroup ring
  multiplicativeMonoid : Monoid ring
  isVonNeumannRegular : Prop
  completionExists : Prop
  isVonNeumannRegularTerm : isVonNeumannRegular
  completionExistsTerm : completionExists

structure RegularCompletionEvidence (C : RegularCompletionPackage) where
  isVonNeumannRegularClosed : C.isVonNeumannRegular
  completionExistsClosed : C.completionExists

def RegularCompletionClosed (C : RegularCompletionPackage) : Prop :=
  C.isVonNeumannRegular ∧ C.completionExists

theorem regular_completion_closed_from_evidence
    (C : RegularCompletionPackage) (E : RegularCompletionEvidence C) :
    RegularCompletionClosed C := by
  exact And.intro E.isVonNeumannRegularClosed E.completionExistsClosed

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse