import CStarWStarEmbedding

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure CStarWStarRelationPackage where
  embedding : CStarWStarEmbeddingPackage
  doubleDualIsWStar : Prop
  weakStarContinuity : Prop
  sakaiCharacterization : Prop

structure CStarWStarRelationEvidence (P : CStarWStarRelationPackage) where
  doubleDualIsWStarClosed : P.doubleDualIsWStar
  weakStarContinuityClosed : P.weakStarContinuity
  sakaiCharacterizationClosed : P.sakaiCharacterization

def CStarWStarRelationClosed (P : CStarWStarRelationPackage) : Prop :=
  P.doubleDualIsWStar ∧ P.weakStarContinuity ∧ P.sakaiCharacterization

theorem cstar_wstar_relation_closed_from_evidence
    (P : CStarWStarRelationPackage) (E : CStarWStarRelationEvidence P) :
    CStarWStarRelationClosed P := by
  exact And.intro E.doubleDualIsWStarClosed
    (And.intro E.weakStarContinuityClosed E.sakaiCharacterizationClosed)

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse