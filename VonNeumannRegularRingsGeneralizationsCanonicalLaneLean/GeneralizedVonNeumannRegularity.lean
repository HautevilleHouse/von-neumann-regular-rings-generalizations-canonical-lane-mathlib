import VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.VonNeumannRegularRing

/-!
# Generalized Von Neumann Regularity Package
-/

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

structure GeneralizedVonNeumannRegularityPackage {G : VonNeumannRegularRingPackage}
    (R : VonNeumannRegularRingPackage) where
  generalizationType : Type u
  bridgeToRegular : Prop
  closureUnderGeneralization : Prop
  endpointGeneralization : Prop

structure GeneralizedVonNeumannRegularityEvidence {G : VonNeumannRegularRingPackage}
    {R : VonNeumannRegularRingPackage} (Q : GeneralizedVonNeumannRegularityPackage R) where
  bridgeToRegularClosed : Q.bridgeToRegular
  closureUnderGeneralizationClosed : Q.closureUnderGeneralization
  endpointGeneralizationClosed : Q.endpointGeneralization

def GeneralizedVonNeumannRegularityClosed {G : VonNeumannRegularRingPackage}
    {R : VonNeumannRegularRingPackage} (Q : GeneralizedVonNeumannRegularityPackage R) : Prop :=
  Q.bridgeToRegular ∧ Q.closureUnderGeneralization ∧ Q.endpointGeneralization

theorem generalized_von_neumann_regularity_closed_from_evidence
    {G : VonNeumannRegularRingPackage} {R : VonNeumannRegularRingPackage}
    (Q : GeneralizedVonNeumannRegularityPackage R) (E : GeneralizedVonNeumannRegularityEvidence Q) :
    GeneralizedVonNeumannRegularityClosed Q := by
  exact And.intro E.bridgeToRegularClosed (And.intro E.closureUnderGeneralizationClosed E.endpointGeneralizationClosed)

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse