import VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.GeneralizedVonNeumannRegularity

/-!
# Idempotent Structure Package
-/

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure IdempotentStructurePackage {G : VonNeumannRegularRingPackage}
    (R : GeneralizedVonNeumannRegularityPackage G) where
  idempotentLattice : Type u
  comparabilityAxiom : Prop
  orthogonalityAxiom : Prop
  closureUnderGeneralization : Prop

structure IdempotentStructureEvidence {G : VonNeumannRegularRingPackage}
    {R : GeneralizedVonNeumannRegularityPackage G} (I : IdempotentStructurePackage R) where
  comparabilityAxiomClosed : I.comparabilityAxiom
  orthogonalityAxiomClosed : I.orthogonalityAxiom
  closureUnderGeneralizationClosed : I.closureUnderGeneralization

def IdempotentStructureClosed {G : VonNeumannRegularRingPackage}
    {R : GeneralizedVonNeumannRegularityPackage G} (I : IdempotentStructurePackage R) : Prop :=
  I.comparabilityAxiom ∧ I.orthogonalityAxiom ∧ I.closureUnderGeneralization

theorem idempotent_structure_closed_from_evidence
    {G : VonNeumannRegularRingPackage} {R : GeneralizedVonNeumannRegularityPackage G}
    (I : IdempotentStructurePackage R) (E : IdempotentStructureEvidence I) :
    IdempotentStructureClosed I := by
  exact And.intro E.comparabilityAxiomClosed (And.intro E.orthogonalityAxiomClosed E.closureUnderGeneralizationClosed)

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse