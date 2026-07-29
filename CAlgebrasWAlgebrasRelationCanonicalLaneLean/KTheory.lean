import CAlgebrasWAlgebrasRelationCanonicalLaneLean.CStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure KTheoryGroup (A : CStarAlgebra) where
  k0Group : Type u
  k1Group : Type v
  bottPeriodicity : k0Group ≃ k1Group
  indexMap : (A.carrier → A.carrier) → k0Group
  closureProperty : ∀ x : A.carrier, True

def KTheoreticBridge (A : CStarAlgebra) (K : KTheoryGroup A) : Prop :=
  K.closureProperty

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse