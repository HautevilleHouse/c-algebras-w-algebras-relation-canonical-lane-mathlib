import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CAlgebrasWAlgebrasRelationCanonicalLaneLean.CStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure KTheoryGroup where
  algebra : CStarAlgebra
  K0 : Type u
  K1 : Type u
  semigroup : K0 → K0 → K0
  group : K0 → K0
  identity : K0
  exactness : ∀ A → K0 A → K1 A

structure KTheoryEvidence where
  algebraEvidence : CStarAlgebraEvidence
  K0Defined : Type u
  K1Defined : Type u
  semigroupClosed : K0Defined → K0Defined → K0Defined
  groupClosed : K0Defined → K0Defined
  identityClosed : K0Defined
  exactnessClosed : ∀ (A : K0Defined) → (f : K0Defined → K0Defined) → (g : K0Defined → K0Defined), True

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse