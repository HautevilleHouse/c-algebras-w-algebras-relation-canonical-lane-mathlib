import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure KMSStatePackage where
  algebra : CStarAlgebraPackage
  inverseTemperature : ℝ
  state : carrier → ℂ
  kmsCondition : ∀ x y : carrier, state (x * y) = state (y * x)
  analyticContinuation : Prop

structure KMSStateEvidence (K : KMSStatePackage) where
  kmsConditionClosed : K.kmsCondition
  analyticContinuationClosed : K.analyticContinuation

def KMSStateClosed (K : KMSStatePackage) : Prop :=
  K.kmsCondition ∧ K.analyticContinuation

theorem kms_state_closed_from_evidence (K : KMSStatePackage) (E : KMSStateEvidence K) :
    KMSStateClosed K := by
  exact And.intro E.kmsConditionClosed E.analyticContinuationClosed

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse