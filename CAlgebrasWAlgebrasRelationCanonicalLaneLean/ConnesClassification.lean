import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure ConnesClassificationPackage where
  factorType : Type
  typeI : Prop
  typeII_1 : Prop
  typeII_∞ : Prop
  typeIII : Prop
  typeIII_lambda : Prop
  flowOfWeights : Prop

structure ConnesClassificationEvidence (C : ConnesClassificationPackage) where
  typeIClosed : C.typeI
  typeII_1Closed : C.typeII_1
  typeII_∞Closed : C.typeII_∞
  typeIIIClosed : C.typeIII
  typeIII_lambdaClosed : C.typeIII_lambda
  flowOfWeightsClosed : C.flowOfWeights

def ConnesClassificationClosed (C : ConnesClassificationPackage) : Prop :=
  C.typeI ∧ C.typeII_1 ∧ C.typeII_∞ ∧ C.typeIII ∧ C.typeIII_lambda ∧ C.flowOfWeights

theorem connes_classification_closed_from_evidence (C : ConnesClassificationPackage) (E : ConnesClassificationEvidence C) :
    ConnesClassificationClosed C := by
  exact And.intro E.typeIClosed (And.intro E.typeII_1Closed (And.intro E.typeII_∞Closed (And.intro E.typeIIIClosed (And.intro E.typeIII_lambdaClosed E.flowOfWeightsClosed))))

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse