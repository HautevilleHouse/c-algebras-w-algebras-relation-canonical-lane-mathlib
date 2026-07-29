import canonicalLaneMathlib.AdmissibleClass
import CAlgebrasWAlgebrasRelationCanonicalLaneLean.CStarAlgebra

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure GNSConstructionPackage (C : CStarAlgebraPackage) where
  state : C.carrier → ℂ
  statePositive : Prop
  representation : C.carrier → (Subtype (λ _ => True) → ℂ)
  cyclicVector : Prop
  irreducibility : Prop

structure GNSEvidence {C : CStarAlgebraPackage} (G : GNSConstructionPackage C) where
  statePositiveClosed : G.statePositive
  representationClosed : G.representation
  cyclicVectorClosed : G.cyclicVector
  irreducibilityClosed : G.irreducibility

def GNSClosed {C : CStarAlgebraPackage} (G : GNSConstructionPackage C) : Prop :=
  G.statePositive ∧ G.representation ∧ G.cyclicVector ∧ G.irreducibility

theorem gns_closed_from_evidence {C : CStarAlgebraPackage} (G : GNSConstructionPackage C)
    (E : GNSEvidence G) : GNSClosed G :=
  And.intro E.statePositiveClosed
    (And.intro E.representationClosed
      (And.intro E.cyclicVectorClosed E.irreducibilityClosed))

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse