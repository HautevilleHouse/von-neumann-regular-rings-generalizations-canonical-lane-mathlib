import VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VonNeumannWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse