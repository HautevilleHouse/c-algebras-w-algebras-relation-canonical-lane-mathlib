import HautevilleHouse.CAlgebrasWAlgebrasRelationCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CStarWStarEndgameState where
  object : AdmittedCStarWStarObject

def cstarWstarProjection : Projection CStarWStarEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem cstar_wstar_projection_idempotent (x : CStarWStarEndgameState) :
    cstarWstarProjection.toFun (cstarWstarProjection.toFun x) = cstarWstarProjection.toFun x := by
  exact cstarWstarProjection.idempotent x

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse