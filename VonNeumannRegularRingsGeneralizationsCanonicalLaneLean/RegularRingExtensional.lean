import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure RegularRingExtensionalPackage where
  ring : Type u
  addition : ring → ring → ring
  multiplication : ring → ring → ring
  zero : ring
  one : ring
  additiveGroup : AddCommGroup ring
  multiplicativeMonoid : Monoid ring
  isVonNeumannRegular : Prop
  extensionProperty : Prop
  isVonNeumannRegularTerm : isVonNeumannRegular
  extensionPropertyTerm : extensionProperty

structure RegularRingExtensionalEvidence (R : RegularRingExtensionalPackage) where
  isVonNeumannRegularClosed : R.isVonNeumannRegular
  extensionPropertyClosed : R.extensionProperty

def RegularRingExtensionalClosed (R : RegularRingExtensionalPackage) : Prop :=
  R.isVonNeumannRegular ∧ R.extensionProperty

theorem regular_ring_extensional_closed_from_evidence
    (R : RegularRingExtensionalPackage) (E : RegularRingExtensionalEvidence R) :
    RegularRingExtensionalClosed R := by
  exact And.intro E.isVonNeumannRegularClosed E.extensionPropertyClosed

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse