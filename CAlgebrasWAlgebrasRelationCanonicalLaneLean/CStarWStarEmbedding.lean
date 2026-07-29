import Mathlib.OperatorAlgebra.CStar
import Mathlib.OperatorAlgebra.WStar

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure CStarWStarEmbeddingPackage where
  sourceCStar : CStarAlgebra
  targetWStar : WStarAlgebra
  isometricEmbedding : Prop
  wotDenseImage : Prop
  extendsToDoubleDual : Prop

structure CStarWStarEmbeddingEvidence (P : CStarWStarEmbeddingPackage) where
  isometricEmbeddingClosed : P.isometricEmbedding
  wotDenseImageClosed : P.wotDenseImage
  extendsToDoubleDualClosed : P.extendsToDoubleDual

def CStarWStarEmbeddingClosed (P : CStarWStarEmbeddingPackage) : Prop :=
  P.isometricEmbedding ∧ P.wotDenseImage ∧ P.extendsToDoubleDual

theorem cstar_wstar_embedding_closed_from_evidence
    (P : CStarWStarEmbeddingPackage) (E : CStarWStarEmbeddingEvidence P) :
    CStarWStarEmbeddingClosed P := by
  exact And.intro E.isometricEmbeddingClosed
    (And.intro E.wotDenseImageClosed E.extendsToDoubleDualClosed)

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse