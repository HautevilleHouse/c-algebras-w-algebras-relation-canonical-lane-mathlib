import Mathlib.OperatorAlgebra.CStar

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure UniversalConstructionPackage where
  universalCStar : CStarAlgebra
  enveloppingWStar : WStarAlgebra
  universalProperty : Prop
  normalFunctorial : Prop

structure UniversalConstructionEvidence (P : UniversalConstructionPackage) where
  universalPropertyClosed : P.universalProperty
  normalFunctorialClosed : P.normalFunctorial

def UniversalConstructionClosed (P : UniversalConstructionPackage) : Prop :=
  P.universalProperty ∧ P.normalFunctorial

theorem universal_construction_closed_from_evidence
    (P : UniversalConstructionPackage) (E : UniversalConstructionEvidence P) :
    UniversalConstructionClosed P := by
  exact And.intro E.universalPropertyClosed E.normalFunctorialClosed

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse