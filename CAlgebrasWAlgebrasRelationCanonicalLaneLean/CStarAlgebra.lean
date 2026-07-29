import canonicalLaneMathlib.MathlibObjects
import Mathlib.Analysis.CStarAlgebra.Basic

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure CStarAlgebraPackage where
  A : Type u
  [starRing : StarRing A]
  [cstarRing : CstarRing A]
  normed : NormedRing A
  completeness : CompleteSpace A
  algebraOverComplex : Algebra ℂ A
  closedUnderStar : ∀ x : A, x ∈ closure (Set.range star) → x ∈ Set.range star

structure CStarAlgebraEvidence (C : CStarAlgebraPackage) where
  normedClosed : C.normed
  completenessClosed : C.completeness
  algebraOverComplexClosed : C.algebraOverComplex
  closedUnderStarClosed : C.closedUnderStar

def CStarAlgebraClosed (C : CStarAlgebraPackage) : Prop :=
  C.normed ∧ C.completeness ∧ C.algebraOverComplex ∧ C.closedUnderStar

theorem cstar_algebra_closed_from_evidence (C : CStarAlgebraPackage)
    (E : CStarAlgebraEvidence C) : CStarAlgebraClosed C := by
  exact And.intro E.normedClosed (And.intro E.completenessClosed
    (And.intro E.algebraOverComplexClosed E.closedUnderStarClosed))

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse