import CAlgebrasWAlgebrasRelationCanonicalLaneLean.WStarAlgebra

/-!
# Morita equivalence package
-/

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure MoritaEquivalencePackage where
  algebra1 : WStarAlgebraPackage
  algebra2 : WStarAlgebraPackage
  equivalenceBimodule : Type u
  moduleStructure : Prop
  innerProducts : Prop

def MoritaEquivalenceEvidence (M : MoritaEquivalencePackage) : Prop :=
  M.moduleStructure ∧ M.innerProducts

theorem morita_evidence_holds (M : MoritaEquivalencePackage) (h1 : M.moduleStructure) (h2 : M.innerProducts) :
  MoritaEquivalenceEvidence M := by
  exact And.intro h1 h2

structure MoritaBridgeData where
  morita : MoritaEquivalencePackage
  evidence : MoritaEquivalenceEvidence morita
  stableIso : Prop

def MoritaBridgeClosed (B : MoritaBridgeData) : Prop :=
  B.stableIso

theorem morita_bridge_closed_from_data (B : MoritaBridgeData) : MoritaBridgeClosed B := by
  exact B.stableIso

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse