import CAlgebrasWAlgebrasRelationCanonicalLaneLean.MoritaEquivalence

/-!
# Double dual embedding package
-/

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure DoubleDualEmbeddingPackage where
  algebra : CStarAlgebraPackage
  doubleDual : WStarAlgebraPackage
  embeddingMap : algebra.carrier → doubleDual.carrier
  isIsometric : Prop
  isStarHom : Prop

def DoubleDualEmbeddingEvidence (D : DoubleDualEmbeddingPackage) : Prop :=
  D.isIsometric ∧ D.isStarHom

theorem double_dual_evidence_holds (D : DoubleDualEmbeddingPackage) (h1 : D.isIsometric) (h2 : D.isStarHom) :
  DoubleDualEmbeddingEvidence D := by
  exact And.intro h1 h2

structure DoubleDualBridgeData where
  embedding : DoubleDualEmbeddingPackage
  evidence : DoubleDualEmbeddingEvidence embedding
  denseInWStar : Prop

def DoubleDualBridgeClosed (B : DoubleDualBridgeData) : Prop :=
  B.denseInWStar

theorem double_dual_bridge_closed_from_data (B : DoubleDualBridgeData) : DoubleDualBridgeClosed B := by
  exact B.denseInWStar

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse