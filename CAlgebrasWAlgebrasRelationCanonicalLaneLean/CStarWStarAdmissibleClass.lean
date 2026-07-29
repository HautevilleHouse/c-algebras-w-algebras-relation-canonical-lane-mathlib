import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure CStarAlgebra where
  carrier : Type
  star : carrier → carrier
  norm : carrier → ℝ
  spectrum : carrier → Set ℂ

structure WStarAlgebra (A : CStarAlgebra) where
  carrier : Type
  weakClosure : Set A.carrier → Set carrier
  predual : Type
  normalStates : Set (carrier → ℂ)

structure CStarWStarAdmittedObject where
  cstar : CStarAlgebra
  wstar : WStarAlgebra cstar
  doubleCommutantEquivalent : Prop
  conclusion : doubleCommutantEquivalent

def CStarWStarWitnessClosed (O : CStarWStarAdmittedObject) : Prop :=
  O.doubleCommutantEquivalent

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse
