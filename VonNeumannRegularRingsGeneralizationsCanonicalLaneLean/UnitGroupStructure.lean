import VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.StableRankGeneralization

/-!
# Unit Group Structure Package
-/

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure UnitGroupStructurePackage {G : VonNeumannRegularRingPackage}
    {R : GeneralizedVonNeumannRegularityPackage G} {I : IdempotentStructurePackage R}
    {S : StableRankGeneralizationPackage I} where
  unitGroupFunctor : Type u -> Type v
  unitGroupIsGroup : Prop
  generalizedUnitLift : Prop
  bridgeToRegularUnits : Prop

structure UnitGroupStructureEvidence {G : VonNeumannRegularRingPackage}
    {R : GeneralizedVonNeumannRegularityPackage G} {I : IdempotentStructurePackage R}
    {S : StableRankGeneralizationPackage I} (U : UnitGroupStructurePackage S) where
  unitGroupIsGroupClosed : U.unitGroupIsGroup
  generalizedUnitLiftClosed : U.generalizedUnitLift
  bridgeToRegularUnitsClosed : U.bridgeToRegularUnits

def UnitGroupStructureClosed {G : VonNeumannRegularRingPackage}
    {R : GeneralizedVonNeumannRegularityPackage G} {I : IdempotentStructurePackage R}
    {S : StableRankGeneralizationPackage I} (U : UnitGroupStructurePackage S) : Prop :=
  U.unitGroupIsGroup ∧ U.generalizedUnitLift ∧ U.bridgeToRegularUnits

theorem unit_group_structure_closed_from_evidence
    {G : VonNeumannRegularRingPackage} {R : GeneralizedVonNeumannRegularityPackage G}
    {I : IdempotentStructurePackage R} {S : StableRankGeneralizationPackage I}
    (U : UnitGroupStructurePackage S) (E : UnitGroupStructureEvidence U) :
    UnitGroupStructureClosed U := by
  exact And.intro E.unitGroupIsGroupClosed (And.intro E.generalizedUnitLiftClosed E.bridgeToRegularUnitsClosed)

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse