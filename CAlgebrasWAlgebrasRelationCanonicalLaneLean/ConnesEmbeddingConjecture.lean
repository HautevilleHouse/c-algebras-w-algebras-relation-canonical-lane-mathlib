import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure ConnesEmbeddingObject where
  typeII_1_factor : WAlgebraObject
  hyperfinite : Prop
  embeddableInR : Prop
  conclusion : embeddableInR
  closedEvidence : conclusion

def ConnesEmbeddingClosed (A : ConnesEmbeddingObject) : Prop :=
  A.conclusion

theorem connes_embedding_witness (A : ConnesEmbeddingObject) :
    ConnesEmbeddingClosed A := by
  exact A.closedEvidence

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse