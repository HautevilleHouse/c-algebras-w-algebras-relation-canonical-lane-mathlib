import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationCanonicalLaneLean.CStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure DoubleCommutantTheorem where
  algebra : CStarAlgebra
  representation : algebra.carrier → (H → H) where H : Type u
  commutant : Set (H → H)
  doubleCommutant : Set (H → H) → Set (H → H)
  vonNeumannBicommutant : ∀ S : Set (H → H), doubleCommutant (doubleCommutant S) = normClosure S
  wStarClosure : weakStarClosure algebra = doubleCommutant algebra

structure DoubleCommutantEvidence where
  algebraEvidence : CStarAlgebraEvidence
  representation : algebraEvidence.carrierType → (H → H)
  commutantDefined : Set (H → H)
  doubleCommutantDefined : Set (H → H) → Set (H → H)
  bicommutantClosed : ∀ S : Set (H → H), doubleCommutantDefined (doubleCommutantDefined S) = normClosure S

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse