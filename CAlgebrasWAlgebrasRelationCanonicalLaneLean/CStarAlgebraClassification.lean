import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationCanonicalLaneLean.CStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure AFAlgebra extends CStarAlgebra where
  directLimit : ℕ → carrier
  connectingMaps : (n : ℕ) → directLimit n → directLimit (n+1)
  dimensionGroup : Type u
  traceMap : carrier → dimensionGroup

structure UHFAFClassificationEvidence where
  algebraEvidence : CStarAlgebraEvidence
  AFStructure : AFAlgebra
  dimensionGroupIsOrderedGroup : Prop
  traceMapIsFaithful : Prop

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse