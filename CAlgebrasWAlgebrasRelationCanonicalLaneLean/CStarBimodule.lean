import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure CStarCorrespondence {A B : CAlgebraObject} where
  leftAction : A.carrier → (carrier → carrier)
  rightAction : B.carrier → (carrier → carrier)
  innerProduct : carrier → carrier → ℂ
  bimoduleCondition : Prop

structure AdmissibleCorrespondence {A B : CAlgebraObject} (X : CStarCorrespondence A B) where
  fullyFaithful : Prop
  equivalence : Prop
  conclusion : fullyFaithful ∧ equivalence

def CorrespondenceClosed {A B : CAlgebraObject} (X : CStarCorrespondence A B) : Prop :=
  X.bimoduleCondition

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse