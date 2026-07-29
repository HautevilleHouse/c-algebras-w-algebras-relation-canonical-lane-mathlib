import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure VonNeumannAlgebraPackage where
  carrier : Type u
  norm : carrier → ℝ
  involution : carrier → carrier
  multiplication : carrier → carrier → carrier
  addition : carrier → carrier → carrier
  scalar : ℂ → carrier → carrier
  isCStar : CStarAlgebraPackage
  weakOperatorTopology : TopologicalSpace carrier
  bicommutantCondition : Prop
  unitElement : carrier
  
structure VonNeumannAlgebraEvidence (W : VonNeumannAlgebraPackage) where
  bicommutantConditionClosed : W.bicommutantCondition
  weakOperatorTopologyClosed : W.weakOperatorTopology = inferInstance
  unitElementExists : W.unitElement ≠ 0

def VonNeumannAlgebraClosed (W : VonNeumannAlgebraPackage) : Prop :=
  W.bicommutantCondition ∧ CStarAlgebraClosed W.isCStar

theorem von_neumann_algebra_closed_from_evidence (W : VonNeumannAlgebraPackage) (E : VonNeumannAlgebraEvidence W) :
    VonNeumannAlgebraClosed W := by
  exact And.intro E.bicommutantConditionClosed (cstar_algebra_closed_from_evidence W.isCStar (by
    sorry))

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse