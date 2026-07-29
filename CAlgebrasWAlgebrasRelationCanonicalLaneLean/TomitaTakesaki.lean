import CAlgebrasWAlgebrasRelationCanonicalLaneLean.VonNeumannAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure ModularGroup (M : VonNeumannAlgebra) where
  timeEvolution : ℝ → M.carrier → M.carrier
  groupLaw : ∀ t s, timeEvolution (t + s) = timeEvolution t ∘ timeEvolution s
  strongContinuity : Continuous (λ (t : ℝ) => timeEvolution t)

structure TomitaTakesakiTheorem (M : VonNeumannAlgebra) where
  modularOperator : M.carrier → M.carrier
  modularConjugation : M.carrier → M.carrier
  polarDecomposition : True
  conclusion : ModularGroup M

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse