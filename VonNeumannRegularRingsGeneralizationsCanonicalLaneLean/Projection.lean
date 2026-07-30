import VonNeumannRegularRingsGeneralizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace VonNeumannRegularRingsGeneralizationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def vonNeumannProjection : Projection VonNeumannEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem von_neumann_projection_idempotent (x : VonNeumannEndgameState) :
    vonNeumannProjection.toFun (vonNeumannProjection.toFun x) = vonNeumannProjection.toFun x := by
  exact vonNeumannProjection.idempotent x

end VonNeumannRegularRingsGeneralizationsCanonicalLaneLean
end HautevilleHouse