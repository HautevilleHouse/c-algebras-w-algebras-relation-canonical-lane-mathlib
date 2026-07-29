import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationCanonicalLaneLean.CStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure GelfandNaimarkTheorem where
  algebra : CStarAlgebra
  representation : algebra.carrier → (H → H) where H : Type u
  isometric : ∀ a b : algebra.carrier, ‖representation a - representation b‖ = ‖a - b‖
  starPreserving : ∀ a : algebra.carrier, representation (algebra.star a) = (representation a)†
  injective : ∀ a : algebra.carrier, representation a = 0 → a = 0

structure GelfandNaimarkEvidence where
  algebraEvidence : CStarAlgebraEvidence
  representation : algebraEvidence.carrierType → (H → H)
  isometricClosed : ∀ a b : algebraEvidence.carrierType, ‖representation a - representation b‖ = ‖a - b‖
  starPreservingClosed : ∀ a : algebraEvidence.carrierType, representation (algebraEvidence.starDef a) = (representation a)†
  injectiveClosed : ∀ a : algebraEvidence.carrierType, representation a = 0 → a = 0

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse