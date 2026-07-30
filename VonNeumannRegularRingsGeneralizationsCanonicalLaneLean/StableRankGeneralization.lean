import VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.IdempotentStructure

/-!
# Stable Rank Generalization Package
-/

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure StableRankGeneralizationPackage {G : VonNeumannRegularRingPackage}
    {R : GeneralizedVonNeumannRegularityPackage G} {I : IdempotentStructurePackage R} where
  stableRankOne : Prop
  cancellationProperty : Prop
  generalizationBridge : Prop
  endpointStableRank : Prop

structure StableRankGeneralizationEvidence {G : VonNeumannRegularRingPackage}
    {R : GeneralizedVonNeumannRegularityPackage G} {I : IdempotentStructurePackage R}
    (S : StableRankGeneralizationPackage I) where
  stableRankOneClosed : S.stableRankOne
  cancellationPropertyClosed : S.cancellationProperty
  generalizationBridgeClosed : S.generalizationBridge
  endpointStableRankClosed : S.endpointStableRank

def StableRankGeneralizationClosed {G : VonNeumannRegularRingPackage}
    {R : GeneralizedVonNeumannRegularityPackage G} {I : IdempotentStructurePackage R}
    (S : StableRankGeneralizationPackage I) : Prop :=
  S.stableRankOne ∧ S.cancellationProperty ∧ S.generalizationBridge ∧ S.endpointStableRank

theorem stable_rank_generalization_closed_from_evidence
    {G : VonNeumannRegularRingPackage} {R : GeneralizedVonNeumannRegularityPackage G}
    {I : IdempotentStructurePackage R} (S : StableRankGeneralizationPackage I)
    (E : StableRankGeneralizationEvidence S) : StableRankGeneralizationClosed S := by
  exact And.intro E.stableRankOneClosed
    (And.intro E.cancellationPropertyClosed
      (And.intro E.generalizationBridgeClosed E.endpointStableRankClosed))

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse