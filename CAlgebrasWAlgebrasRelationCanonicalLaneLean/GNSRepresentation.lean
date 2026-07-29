import HautevilleHouse.CAlgebrasWAlgebrasRelationCanonicalLaneLean.CStarAlgebra
import Mathlib.Analysis.CStarAlgebra.GelfandNaimark

namespace HautevilleHouse
namespace CAlgebrasWAlgebrasRelationCanonicalLaneLean

structure GNSRepresentationPackage (C : CStarAlgebraPackage) where
  hilbertSpace : Type u
  representation : C.algebra → (hilbertSpace →L[ℂ] hilbertSpace)
  isStarHomomorphism : Prop
  isNondegenerate : Prop
  isIrreducible : Bool
  isStarHomomorphismClosed : isStarHomomorphism
  isNondegenerateClosed : isNondegenerate

structure GNSRepresentationEvidence {C : CStarAlgebraPackage} (G : GNSRepresentationPackage C) where
  isStarHomomorphismClosed : G.isStarHomomorphism
  isNondegenerateClosed : G.isNondegenerate

def GNSRepresentationClosed {C : CStarAlgebraPackage} (G : GNSRepresentationPackage C) : Prop :=
  G.isStarHomomorphism ∧ G.isNondegenerate

theorem gns_representation_closed_from_evidence
  {C : CStarAlgebraPackage} (G : GNSRepresentationPackage C)
  (E : GNSRepresentationEvidence G) : GNSRepresentationClosed G := by
  exact And.intro E.isStarHomomorphismClosed E.isNondegenerateClosed

end CAlgebrasWAlgebrasRelationCanonicalLaneLean
end HautevilleHouse