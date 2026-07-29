import canonicalLaneMathlib.AdmissibleClass
import CAlgebrasWAlgebrasRelationCanonicalLaneLean.VonNeumannAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure FactorClassificationPackage {C : CStarAlgebraPackage}
    (V : VonNeumannAlgebraPackage C) where
  isFactor : Prop
  typeI : Prop
  typeII : Prop
  typeIII : Prop
  typeIClassification : Prop
  typeIIClassification : Prop
  typeIIIClassification : Prop

structure FactorClassificationEvidence {C : CStarAlgebraPackage}
    {V : VonNeumannAlgebraPackage C} (F : FactorClassificationPackage V) where
  isFactorClosed : F.isFactor
  typeIClosed : F.typeI
  typeIIClosed : F.typeII
  typeIIIClosed : F.typeIII
  classificationConsistent : Prop

def FactorClassificationClosed {C : CStarAlgebraPackage}
    {V : VonNeumannAlgebraPackage C} (F : FactorClassificationPackage V) : Prop :=
  F.isFactor ∧ F.typeI ∧ F.typeII ∧ F.typeIII ∧ F.typeIClassification ∧ F.typeIIClassification ∧ F.typeIIIClassification

theorem factor_classification_closed_from_evidence {C : CStarAlgebraPackage}
    {V : VonNeumannAlgebraPackage C} (F : FactorClassificationPackage V)
    (E : FactorClassificationEvidence F) : FactorClassificationClosed F :=
  And.intro E.isFactorClosed
    (And.intro E.typeIClosed
      (And.intro E.typeIIClosed
        (And.intro E.typeIIIClosed
          (And.intro F.typeIClassification (And.intro F.typeIIClassification F.typeIIIClassification)))))

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse