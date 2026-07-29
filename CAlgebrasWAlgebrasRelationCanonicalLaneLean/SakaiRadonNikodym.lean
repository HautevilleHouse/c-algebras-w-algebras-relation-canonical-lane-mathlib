import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationCanonicalLaneLean.WStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure SakaiRadonNikodymTheorem where
  algebra : WStarAlgebra
  normalLinearFunctional : (algebra.carrier → ℂ) → Prop
  radonNikodymDerivative : ∀ φ : (algebra.carrier → ℂ), normalLinearFunctional φ → ∃ h : algebra.carrier, φ = fun x => algebra.predualPairing (h * x) ??
  uniqueness : ∀ φ : (algebra.carrier → ℂ), normalLinearFunctional φ → (∃! h : algebra.carrier, φ = fun x => algebra.predualPairing (h * x) ??)

structure SakaiRadonNikodymEvidence where
  algebraEvidence : WStarAlgebraEvidence
  normalLinearFunctionalDefined : (algebraEvidence.CStarAlgebraData.carrierType → ℂ) → Prop
  existenceClosed : ∀ φ, normalLinearFunctionalDefined φ → ∃ h : algebraEvidence.CStarAlgebraData.carrierType, (∀ x : algebraEvidence.CStarAlgebraData.carrierType, φ x = algebraEvidence.predualPairing (h * x) ??)
  uniquenessClosed : ∀ φ, normalLinearFunctionalDefined φ → (∃! h : algebraEvidence.CStarAlgebraData.carrierType, ∀ x : algebraEvidence.CStarAlgebraData.carrierType, φ x = algebraEvidence.predualPairing (h * x) ??)

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse