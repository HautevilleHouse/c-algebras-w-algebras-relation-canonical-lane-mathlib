import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

def ConstrainedCWClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cw_endgame (A : AdmissibleClass) :
    ConstrainedCWClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse