import canonicalLaneMathlib.AdmissibleClass
import CAlgebrasWAlgebrasRelationCanonicalLaneLean.FactorClassification

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure SubfactorPackage {C : CStarAlgebraPackage}
    {V : VonNeumannAlgebraPackage C} (F : FactorClassificationPackage V) where
  subfactorInclusion : Prop
  jonesIndex : ℝ
  indexFinite : Prop
  standardInvariant : Prop

structure SubfactorEvidence {C : CStarAlgebraPackage}
    {V : VonNeumannAlgebraPackage C} {F : FactorClassificationPackage V}
    (S : SubfactorPackage F) where
  subfactorInclusionClosed : S.subfactorInclusion
  indexFiniteClosed : S.indexFinite
  standardInvariantClosed : S.standardInvariant

def SubfactorClosed {C : CStarAlgebraPackage}
    {V : VonNeumannAlgebraPackage C} {F : FactorClassificationPackage V}
    (S : SubfactorPackage F) : Prop :=
  S.subfactorInclusion ∧ S.indexFinite ∧ S.standardInvariant

theorem subfactor_closed_from_evidence {C : CStarAlgebraPackage}
    {V : VonNeumannAlgebraPackage C} {F : FactorClassificationPackage V}
    (S : SubfactorPackage F) (E : SubfactorEvidence S) : SubfactorClosed S :=
  And.intro E.subfactorInclusionClosed
    (And.intro E.indexFiniteClosed E.standardInvariantClosed)

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse