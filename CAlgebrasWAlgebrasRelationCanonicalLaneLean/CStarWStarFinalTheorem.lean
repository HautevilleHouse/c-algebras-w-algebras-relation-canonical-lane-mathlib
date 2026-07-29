import HautevilleHouse.CAlgebrasWAlgebrasRelationCanonicalLaneLean.CStarWStarBridgeLemmas
import HautevilleHouse.CAlgebrasWAlgebrasRelationCanonicalLaneLean.CStarWStarGateLemmas

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

def ConstrainedCStarWStarClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cstar_wstar_endgame (A : AdmissibleClass) :
    ConstrainedCStarWStarClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse
