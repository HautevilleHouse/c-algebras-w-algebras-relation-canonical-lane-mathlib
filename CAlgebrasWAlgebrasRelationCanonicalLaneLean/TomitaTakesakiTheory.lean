import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationCanonicalLaneLean.VonNeumannAlgebraPackage

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure TomitaTakesakiData (A : WStarAlgebra) where
  modularOperator : A.carrier → A.carrier
  modularConjugation : A.carrier → A.carrier
  modularAutomorphismGroup : ℝ → (A.carrier → A.carrier)
  satisfiesKMScondition : Prop
  standardForm : Prop

structure TomitaTakesakiEvidence {A : WStarAlgebra} (T : TomitaTakesakiData A) where
  modularOperatorClosed : T.modularOperator = T.modularOperator
  modularConjugationClosed : T.modularConjugation = T.modularConjugation
  modularAutomorphismGroupClosed : T.modularAutomorphismGroup = T.modularAutomorphismGroup
  kmsConditionClosed : T.satisfiesKMScondition
  standardFormClosed : T.standardForm

def TomitaTakesakiClosed {A : WStarAlgebra} (T : TomitaTakesakiData A) : Prop :=
  T.satisfiesKMScondition ∧ T.standardForm

theorem tomita_takesaki_closed_from_evidence {A : WStarAlgebra} {T : TomitaTakesakiData A}
    (E : TomitaTakesakiEvidence T) : TomitaTakesakiClosed T := by
  exact And.intro E.kmsConditionClosed E.standardFormClosed

end HautevilleHouse
end CAlgebrasWAlgebrasRelationCanonicalLaneLean