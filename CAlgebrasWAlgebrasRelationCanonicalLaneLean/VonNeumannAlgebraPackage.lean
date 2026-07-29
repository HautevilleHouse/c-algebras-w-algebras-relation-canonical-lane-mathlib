import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure WStarAlgebra where
  carrier : Type u
  algebraStructure : Prop
  weakClosed : Prop
  commutant : WStarAlgebra
  predual : Type v
  isDualOfPredual : Prop
  separatingCyclicVector : Prop

structure WStarAlgebraEvidence (A : WStarAlgebra) where
  algebraStructureClosed : A.algebraStructure
  weakClosedClosed : A.weakClosed
  commutantClosed : A.commutant.weakClosed ∧ A.commutant.commutant = A
  predualDualClosed : A.isDualOfPredual
  cyclicVectorClosed : A.separatingCyclicVector

def WStarAlgebraClosed (A : WStarAlgebra) : Prop :=
  A.algebraStructure ∧ A.weakClosed ∧ (A.commutant.weakClosed ∧ A.commutant.commutant = A) ∧ A.isDualOfPredual ∧ A.separatingCyclicVector

theorem wstar_algebra_closed_from_evidence (A : WStarAlgebra) (E : WStarAlgebraEvidence A) :
    WStarAlgebraClosed A := by
  exact And.intro E.algebraStructureClosed
    (And.intro E.weakClosedClosed
      (And.intro E.commutantClosed
        (And.intro E.predualDualClosed E.cyclicVectorClosed)))

end HautevilleHouse
end CAlgebrasWAlgebrasRelationCanonicalLaneLean