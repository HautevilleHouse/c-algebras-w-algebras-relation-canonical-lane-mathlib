import canonicalLaneMathlib.CStarAlgebra
import Mathlib.Analysis.WStarAlgebra.Basic

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure WStarAlgebraPackage where
  M : Type u
  [starRing : StarRing M]
  [wstarAlgebra : WstarAlgebra M]
  dualSpace : Type v
  isDual : DualSpace M duaLSpace
  separablePredual : SeparableSpace duaLSpace
  sigmaWeakTopology : TopologicalSpace M

structure WStarAlgebraEvidence (W : WStarAlgebraPackage) where
  isDualClosed : W.isDual
  separablePredualClosed : W.separablePredual
  sigmaWeakTopologyClosed : W.sigmaWeakTopology

def WStarAlgebraClosed (W : WStarAlgebraPackage) : Prop :=
  W.isDual ∧ W.separablePredual ∧ W.sigmaWeakTopology

theorem wstar_algebra_closed_from_evidence (W : WStarAlgebraPackage)
    (E : WStarAlgebraEvidence W) : WStarAlgebraClosed W := by
  exact And.intro E.isDualClosed (And.intro E.separablePredualClosed E.sigmaWeakTopologyClosed)

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse