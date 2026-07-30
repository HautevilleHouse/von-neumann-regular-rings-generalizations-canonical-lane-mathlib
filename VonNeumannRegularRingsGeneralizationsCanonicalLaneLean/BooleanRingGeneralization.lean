import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure BooleanRingGeneralizationPackage where
  ring : Type u
  addition : ring → ring → ring
  multiplication : ring → ring → ring
  zero : ring
  one : ring
  additiveGroup : AddCommGroup ring
  multiplicativeMonoid : Monoid ring
  isIdempotent : Prop
  isVonNeumannRegular : Prop
  isIdempotentTerm : isIdempotent
  isVonNeumannRegularTerm : isVonNeumannRegular

structure BooleanRingGeneralizationEvidence (B : BooleanRingGeneralizationPackage) where
  isIdempotentClosed : B.isIdempotent
  isVonNeumannRegularClosed : B.isVonNeumannRegular

def BooleanRingGeneralizationClosed (B : BooleanRingGeneralizationPackage) : Prop :=
  B.isIdempotent ∧ B.isVonNeumannRegular

theorem boolean_ring_generalization_closed_from_evidence
    (B : BooleanRingGeneralizationPackage) (E : BooleanRingGeneralizationEvidence B) :
    BooleanRingGeneralizationClosed B := by
  exact And.intro E.isIdempotentClosed E.isVonNeumannRegularClosed

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse